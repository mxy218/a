.class public Lcom/meizu/settings/applications/DefaultAppSettingsState;
.super Ljava/lang/Object;
.source "DefaultAppSettingsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;,
        Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;,
        Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;,
        Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;,
        Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;,
        Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;
    }
.end annotation


# static fields
.field static final BROWSE_PROBE:Landroid/content/Intent;

.field private static categoryResource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/meizu/settings/applications/DefaultAppSettingsState;

.field private static mSystemBuiltFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static openFileCategoryIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sSystemBuiltInList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCategoryDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasData:Z

.field private mIpm:Landroid/content/pm/IPackageManager;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUnknowDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mSystemBuiltFilterList:Ljava/util/List;

    .line 82
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mSystemBuiltFilterList:Ljava/util/List;

    const v1, 0x7f1209e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mSystemBuiltFilterList:Ljava/util/List;

    const v2, 0x7f12145e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mSystemBuiltFilterList:Ljava/util/List;

    const v3, 0x7f120438

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mSystemBuiltFilterList:Ljava/util/List;

    const v4, 0x7f12040f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mSystemBuiltFilterList:Ljava/util/List;

    const v5, 0x7f120fee

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    .line 97
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const-string v6, "com.meizu.flyme.launcher"

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const-string v1, "com.meizu.media.camera"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const v1, 0x7f1208f5

    const-string v2, "com.meizu.media.gallery"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const v1, 0x7f1207b3

    const-string v2, "com.android.email"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const v1, 0x7f120d43

    const-string v2, "com.meizu.media.music"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    const v1, 0x7f121767

    const-string v2, "com.meizu.media.video"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    .line 119
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    const v1, 0x7f121630

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    const v1, 0x7f121a07

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    const v1, 0x7f12083c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    const v1, 0x7f12104d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    const v1, 0x7f120fda

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    const v1, 0x7f12115e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->categoryResource:Ljava/util/List;

    .line 130
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->categoryResource:Ljava/util/List;

    const v1, 0x7f16009a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->categoryResource:Ljava/util/List;

    const v1, 0x7f16009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 155
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->BROWSE_PROBE:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mListeners:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mAppCategories:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mAllAppCategories:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mCategoryDatas:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    .line 259
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState$1;-><init>(Lcom/meizu/settings/applications/DefaultAppSettingsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHandler:Landroid/os/Handler;

    .line 281
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    .line 283
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 285
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    .line 287
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DefaultAppSettingsState"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 288
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 289
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;-><init>(Lcom/meizu/settings/applications/DefaultAppSettingsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUnknowDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 293
    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 294
    invoke-direct {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->loadAllDefaultAppCategoryFromResource()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mAllAppCategories:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/DefaultAppSettingsState;I)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->loadCategoriesFromResource(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/DefaultAppSettingsState;Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->buildCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/DefaultAppSettingsState;)Landroid/os/Handler;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/DefaultAppSettingsState;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->applySystemToDefaultIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/DefaultAppSettingsState;Ljava/lang/String;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->handlePkgChangeLock(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/DefaultAppSettingsState;)Ljava/util/ArrayList;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addPersistentPreferredActivity(Landroid/content/pm/ResolveInfo;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V
    .registers 9

    const-string v0, "addPersistentPreferredActivity invaild ResolveInfo = "

    if-eqz p1, :cond_d9

    .line 1008
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_d9

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_e

    goto/16 :goto_d9

    .line 1013
    :cond_e
    iget-object v1, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v1, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    const v2, 0x7f1208f5

    if-ne v1, v2, :cond_1a

    .line 1014
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->removeVideoType(Landroid/content/pm/ResolveInfo;)V

    .line 1017
    :cond_1a
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1019
    iget-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    const v1, 0x7f12040f

    if-ne v0, v1, :cond_3c

    .line 1020
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->setDefaultBrowserKey(Ljava/lang/String;)Z

    .line 1023
    :cond_3c
    iget-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->intentAndResolvinfoLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_d8

    .line 1024
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d8

    .line 1025
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 1026
    :goto_4c
    iget-object v2, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->intentAndResolvinfoLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b5

    .line 1027
    iget-object v2, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->intentAndResolvinfoLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;

    iget-object v2, v2, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1028
    iget-object v3, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->intentAndResolvinfoLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;

    iget-object v3, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 1029
    iget-object v4, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->intentAndResolvinfoLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;

    iget-object v4, v4, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1030
    iget-object v5, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->intentAndResolvinfoLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;

    iget-object v5, v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 1031
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz v4, :cond_94

    .line 1033
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_94
    if-eqz v3, :cond_9e

    .line 1037
    :try_start_96
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_99
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_9e

    :catch_9a
    move-exception v2

    .line 1039
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    .line 1042
    :cond_9e
    :goto_9e
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1043
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_a2

    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 1047
    :cond_b5
    new-instance p2, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :try_start_be
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-interface {p0, v0, p2, p1}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c7} :catch_c8

    goto :goto_d8

    .line 1052
    :catch_c8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addPersistentPreferredActivity error activity = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_d8
    :goto_d8
    return-void

    .line 1009
    :cond_d9
    :goto_d9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private applySystemToDefaultIfNeeded()V
    .registers 3

    const-string v0, "DefaultAppSettingsState"

    const-string v1, "applySystemToDefaultIfNeeded: "

    .line 1098
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1099
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->applySystemToDefaultLock(Z)V

    return-void
.end method

.method private applySystemToDefaultLock(Z)V
    .registers 11

    const v0, 0x7f16009a

    .line 1118
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->loadCategoriesFromResource(I)V

    .line 1119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    iget-object v3, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mCategoryDatas:Landroid/util/SparseArray;

    const/4 v4, 0x0

    move v5, v4

    .line 1122
    :goto_14
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_80

    .line 1123
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1124
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    .line 1125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applySystemToDefaultLock categoryData.defaultPackage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1127
    iget-object v7, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5a

    .line 1128
    iget-object v7, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    iget-object v7, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->clearPackagePersistentPreferredActivities(Ljava/lang/String;)V

    .line 1130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applySystemToDefaultLock clear = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5a
    if-eqz p1, :cond_5f

    .line 1133
    iget-object v7, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->systemResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_61

    .line 1134
    :cond_5f
    iget-object v7, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1135
    :goto_61
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7d

    .line 1136
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    invoke-direct {p0, v7, v6}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->addPersistentPreferredActivity(Landroid/content/pm/ResolveInfo;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V

    .line 1138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applySystemToDefaultLock add = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1143
    :cond_80
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1145
    :try_start_83
    iput-boolean v4, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    .line 1146
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->loadCategoriesFromResource(I)V

    .line 1147
    monitor-exit p1

    return-void

    :goto_8a
    monitor-exit p1
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_8c

    throw p0

    :catchall_8c
    move-exception p0

    goto :goto_8a
.end method

.method private buildAllCatagoryDatas()Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mAllAppCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 380
    invoke-direct {p0, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->buildCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object v3

    .line 381
    iget v2, v2, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method private buildBrowserCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;
    .registers 16

    .line 475
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    invoke-direct {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;-><init>()V

    .line 476
    iput-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    .line 478
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUnknowDefaultIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 480
    sget-object v1, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultBrowserKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getDefaultBrowserKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultAppSettingsState"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v4, Lcom/meizu/settings/applications/DefaultAppSettingsState;->BROWSE_PROBE:Landroid/content/Intent;

    iget v5, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    const v6, 0x20040

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 488
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v5

    move v7, v6

    :goto_4b
    const/4 v9, 0x1

    if-ge v7, v4, :cond_e0

    .line 490
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 491
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_dc

    iget-boolean v11, v10, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v11, :cond_5e

    goto/16 :goto_dc

    .line 494
    :cond_5e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 498
    iget-object v12, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_81
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_96

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    .line 499
    iget-object v13, v13, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    .line 500
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_81

    goto :goto_97

    :cond_96
    move v9, v6

    :goto_97
    if-nez v9, :cond_dc

    .line 506
    new-instance v9, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    invoke-direct {v9}, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;-><init>()V

    .line 507
    iput-object v10, v9, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->activityInfo:Landroid/content/pm/ResolveInfo;

    .line 508
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v12, v9, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    .line 509
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v9, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 510
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->title:Ljava/lang/String;

    .line 511
    iget-object v12, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 515
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildCommonCategoryData get systemResolveInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v8, v10

    :cond_dc
    :goto_dc
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4b

    .line 522
    :cond_e0
    invoke-virtual {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getDefaultBrowserAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->isCtsOrInternationalRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_108

    if-nez v1, :cond_108

    if-eqz v8, :cond_108

    .line 525
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_108

    .line 529
    iget-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v1, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    const v3, 0x7f12040f

    if-ne v1, v3, :cond_102

    .line 530
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->setDefaultBrowserKey(Ljava/lang/String;)Z

    .line 532
    :cond_102
    iput-object v8, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 533
    invoke-virtual {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getDefaultBrowserAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v1

    :cond_108
    if-eqz v1, :cond_134

    .line 538
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p1

    .line 539
    iput-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    .line 540
    sget-object v1, Lcom/meizu/settings/applications/DefaultAppSettingsState;->BROWSE_PROBE:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getDefaultBrowserAppLabel(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    .line 542
    :try_start_120
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    invoke-virtual {v1, p1, v6, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultIcon:Landroid/graphics/drawable/Drawable;
    :try_end_130
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_120 .. :try_end_130} :catch_133

    .line 546
    iput-object v8, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->systemResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_166

    :catch_133
    return-object v5

    .line 547
    :cond_134
    iget-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_166

    .line 548
    iget-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    .line 549
    iget-object v2, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    .line 550
    iget p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    iget-object v2, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->activityInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p1, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getSummary(ILandroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    .line 551
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultIcon:Landroid/graphics/drawable/Drawable;

    :cond_166
    :goto_166
    return-object v0
.end method

.method private buildCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;
    .registers 4

    .line 465
    iget v0, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    const v1, 0x7f12040f

    if-ne v0, v1, :cond_c

    .line 466
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->buildBrowserCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object p0

    return-object p0

    :cond_c
    const v1, 0x7f12145e

    if-ne v0, v1, :cond_16

    .line 469
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->buildSmsCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object p0

    return-object p0

    .line 471
    :cond_16
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->buildCommonCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object p0

    return-object p0
.end method

.method private buildCommonCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;
    .registers 15

    .line 674
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    .line 675
    new-instance v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    invoke-direct {v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;-><init>()V

    .line 676
    iput-object p1, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 677
    iget-object v2, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->intents:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->buildIntentAndResolveInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->intentAndResolvinfoLists:Ljava/util/ArrayList;

    .line 678
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    .line 679
    iget-object v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUnknowDefaultIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 681
    sget-object v2, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    iget v3, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 683
    iget-object v3, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->intentAndResolvinfoLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;

    .line 684
    iget-object v6, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;->resolveInfos:Ljava/util/ArrayList;

    .line 685
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_45
    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 686
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_56

    goto :goto_45

    .line 690
    :cond_56
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    .line 692
    iget-object v11, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_74

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    .line 693
    iget-object v12, v12, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    .line 694
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5f

    move v10, v7

    :cond_74
    if-nez v10, :cond_45

    .line 700
    new-instance v10, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    invoke-direct {v10}, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;-><init>()V

    .line 701
    iput-object v8, v10, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->activityInfo:Landroid/content/pm/ResolveInfo;

    .line 702
    iput-object v9, v10, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    .line 703
    iget-object v11, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v11, v9}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v10, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 704
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->title:Ljava/lang/String;

    .line 705
    iget-object v11, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildCommonCategoryData get systemResolveInfo = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v5, v8

    goto :goto_45

    .line 717
    :cond_b4
    iget-object v2, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->intents:Ljava/util/ArrayList;

    if-eqz v2, :cond_10c

    .line 720
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 721
    iget-object v6, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    const v8, 0x10040

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_d4

    goto :goto_bc

    .line 726
    :cond_d4
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_d9

    goto :goto_bc

    .line 730
    :cond_d9
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 731
    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "android"

    .line 732
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    const-string v8, "com.android.internal.app.MzResolverActivity"

    .line 733
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    goto :goto_bc

    .line 737
    :cond_ee
    iput-object v3, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildCommonCategoryData find default categoryName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resolveInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v4, v6

    .line 744
    :cond_10c
    sget-object v2, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    iget v3, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 745
    iput v7, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->dateType:I

    .line 748
    :cond_11c
    iget-object v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->isCtsOrInternationalRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14e

    if-nez v4, :cond_14e

    .line 749
    sget-object v2, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mSystemBuiltFilterList:Ljava/util/List;

    iget v3, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14e

    if-eqz v5, :cond_14e

    .line 750
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_14e

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no default app, regard system app as default  systemResolveInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 756
    iput-object v5, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultResolveInfo:Landroid/content/pm/ResolveInfo;

    :cond_14e
    if-eqz v4, :cond_16b

    .line 761
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    .line 762
    iget p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p1, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getSummary(ILandroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    .line 763
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 764
    iput-object v5, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->systemResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_184

    .line 765
    :cond_16b
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->openFileCategoryIdList:Ljava/util/List;

    iget p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_184

    .line 766
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    const p1, 0x7f120eec

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    :cond_184
    :goto_184
    return-object v1
.end method

.method private buildIntentAndResolveInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;",
            ">;"
        }
    .end annotation

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 798
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 799
    invoke-direct {p0, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->queryInfoList(Landroid/content/Intent;)Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;

    move-result-object v1

    .line 800
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_20
    return-object v0
.end method

.method private buildSmsCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;
    .registers 10

    .line 637
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    invoke-direct {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;-><init>()V

    .line 638
    iput-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 639
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    .line 640
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUnknowDefaultIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 643
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 645
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object p1, v1

    .line 647
    :goto_24
    iget-object v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    .line 648
    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 650
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 653
    :try_start_3a
    iget-object v4, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-object v4, v1

    :goto_45
    if-eqz v4, :cond_2e

    .line 657
    new-instance v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    invoke-direct {v5}, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;-><init>()V

    .line 658
    iget-object v6, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    .line 659
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 660
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->title:Ljava/lang/String;

    .line 661
    iget-object v6, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2e

    .line 662
    iget-object v3, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 663
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const v3, 0x7f12145e

    .line 664
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v4}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getSummary(ILandroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    .line 666
    iget-object v3, v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2e

    :cond_87
    return-object v0
.end method

.method private clearPackagePersistentPreferredActivities(Ljava/lang/String;)V
    .registers 3

    .line 1068
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1069
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPackagePersistentPreferredActivities invaild pkg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 1073
    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_31

    .line 1075
    :catch_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPackagePersistentPreferredActivities error pkg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_31
    return-void
.end method

.method private clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 3

    .line 1080
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1081
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPackagePreferredActivities invaild pkg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 1085
    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_2d

    .line 1087
    :catch_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPackagePreferredActivities error pkg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_2d
    return-void
.end method

.method private getCandidates(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    const/high16 v1, 0x20000

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/DefaultAppSettingsState;
    .registers 3

    .line 298
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    sget-object v1, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mInstance:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    if-nez v1, :cond_12

    .line 300
    new-instance v1, Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mInstance:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    .line 302
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 303
    sget-object p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mInstance:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    return-object p0

    :catchall_16
    move-exception p0

    .line 302
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private getOnlyBrowserAppLabel(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5

    .line 603
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getCandidates(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    .line 604
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    const/4 v1, 0x0

    .line 605
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 606
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 607
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_28

    .line 608
    :cond_26
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 609
    :goto_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting label for the only browser app: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAppSettingsState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_42
    return-object v0
.end method

.method private getSummary(ILandroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 5

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 776
    :cond_4
    sget-object v0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 777
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 778
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_6a

    .line 779
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const-string p1, "com.meizu.flyme.launcher"

    .line 781
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 782
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseLanguage()Z

    move-result p1

    const v0, 0x7f1206a0

    if-eqz p1, :cond_4b

    .line 783
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 785
    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6a
    return-object p2
.end method

.method private handlePkgChange(Landroid/content/Intent;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1162
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1163
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1164
    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.REPLACING"

    .line 1167
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandleUninstall replace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_39

    return-void

    .line 1173
    :cond_39
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handlePkgChangeLock(Ljava/lang/String;)V
    .registers 5

    .line 1103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1106
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePkgChangeLock mDataInvalid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1108
    iget-boolean v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    if-eqz v1, :cond_24

    .line 1109
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->handlePkgChangeWhenDataValid(Ljava/lang/String;)V

    goto :goto_28

    :cond_24
    const/4 p1, 0x0

    .line 1111
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->applySystemToDefaultLock(Z)V

    .line 1113
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private handlePkgChangeWhenDataValid(Ljava/lang/String;)V
    .registers 9

    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mCategoryDatas:Landroid/util/SparseArray;

    const/4 v2, 0x0

    move v3, v2

    .line 1179
    :goto_9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b

    .line 1180
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1181
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    .line 1182
    iget-object v5, v4, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    sget-object v5, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    iget-object v6, v4, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v6, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1183
    :cond_31
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePkgChangeWhenDataValid affectCategory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget-object v4, v4, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1188
    :cond_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 1189
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->clearPackagePersistentPreferredActivities(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    .line 1191
    iget-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->systemResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_69

    goto :goto_58

    .line 1194
    :cond_69
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->addPersistentPreferredActivity(Landroid/content/pm/ResolveInfo;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePkgChangeWhenDataValid apply to default = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->systemResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_58

    .line 1198
    :cond_7f
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1199
    :try_start_82
    iput-boolean v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    const v0, 0x7f16009a

    .line 1201
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->loadCategoriesFromResource(I)V

    .line 1202
    monitor-exit p1

    goto :goto_8f

    :catchall_8c
    move-exception p0

    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_8c

    throw p0

    :cond_8f
    :goto_8f
    return-void
.end method

.method private loadAllDefaultAppCategoryFromResource()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 371
    :goto_6
    sget-object v2, Lcom/meizu/settings/applications/DefaultAppSettingsState;->categoryResource:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 372
    sget-object v2, Lcom/meizu/settings/applications/DefaultAppSettingsState;->categoryResource:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->loadDefaultAppCategoryFromResource(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    return-object v0
.end method

.method private loadCategoriesFromResource(I)V
    .registers 7

    .line 354
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->loadDefaultAppCategoryFromResource(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_7
    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mAppCategories:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 358
    iget-object v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 359
    invoke-direct {p0, v3}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->buildCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object v4

    .line 360
    iget v3, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_14

    .line 362
    :cond_2a
    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mCategoryDatas:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    .line 365
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_3e

    .line 366
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_3e
    move-exception p0

    .line 365
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method private loadDefaultAppCategoryFromResource(I)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "Error parsing categories"

    .line 387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 390
    :try_start_8
    iget-object v3, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 391
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 393
    :goto_16
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_21

    if-eq v3, v4, :cond_21

    goto :goto_16

    .line 398
    :cond_21
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "app-categories"

    .line 399
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 404
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 405
    :cond_31
    :goto_31
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_c9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_40

    .line 406
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_c9

    :cond_40
    if-eq v6, v7, :cond_31

    const/4 v8, 0x4

    if-ne v6, v8, :cond_46

    goto :goto_31

    .line 410
    :cond_46
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "app-category"

    .line 411
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 412
    new-instance v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    invoke-direct {v6}, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;-><init>()V

    .line 413
    iget-object v9, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/settings/R$styleable;->DefaultAppSettings:[I

    invoke-virtual {v9, p1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v10, 0x0

    .line 416
    invoke-virtual {v9, v5, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    .line 417
    iget v11, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-direct {p0, v11}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->skipThisCategory(I)Z

    move-result v11

    if-eqz v11, :cond_6f

    goto :goto_31

    .line 420
    :cond_6f
    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    .line 421
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->icon:Landroid/graphics/drawable/Drawable;

    .line 422
    invoke-virtual {v9, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->rank:I

    .line 423
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->intents:Ljava/util/ArrayList;

    .line 424
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 425
    :cond_8c
    :goto_8c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-eq v10, v5, :cond_bf

    if-ne v10, v7, :cond_9a

    .line 426
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v9, :cond_bf

    :cond_9a
    if-eq v10, v7, :cond_8c

    if-ne v10, v8, :cond_9f

    goto :goto_8c

    .line 430
    :cond_9f
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "intent"

    .line 431
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bb

    .line 432
    iget-object v10, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v2, p1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v10

    .line 434
    iget-object v11, v6, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->intents:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 436
    :cond_bb
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8c

    .line 439
    :cond_bf
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    .line 441
    :cond_c4
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_c7} :catch_fb
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c7} :catch_f4
    .catchall {:try_start_8 .. :try_end_c7} :catchall_f2

    goto/16 :goto_31

    :cond_c9
    if-eqz v2, :cond_ce

    .line 451
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_ce
    return-object v1

    .line 400
    :cond_cf
    :try_start_cf
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML document must start with <preference-categories> tag; found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cf .. :try_end_f2} :catch_fb
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_f2} :catch_f4
    .catchall {:try_start_cf .. :try_end_f2} :catchall_f2

    :catchall_f2
    move-exception p0

    goto :goto_102

    :catch_f4
    move-exception p0

    .line 448
    :try_start_f5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_fb
    move-exception p0

    .line 446
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_102
    .catchall {:try_start_f5 .. :try_end_102} :catchall_f2

    :goto_102
    if-eqz v2, :cond_107

    .line 451
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_107
    throw p0
.end method

.method public static printLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private queryInfoList(Landroid/content/Intent;)Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;
    .registers 9

    .line 808
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;

    invoke-direct {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;-><init>()V

    .line 809
    iput-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;->intent:Landroid/content/Intent;

    .line 810
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;->resolveInfos:Ljava/util/ArrayList;

    if-nez p1, :cond_11

    return-object v0

    .line 818
    :cond_11
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    const v1, 0x10040

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_4d

    .line 826
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    move-object v2, p0

    :goto_23
    if-ltz v1, :cond_4e

    .line 827
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 828
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 829
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 828
    invoke-static {v4, v5, v6, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_4a

    if-ne v2, p0, :cond_47

    .line 834
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 836
    :cond_47
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    :cond_4d
    move-object v2, p0

    :cond_4e
    if-eqz p0, :cond_84

    .line 842
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_84

    const/4 v3, 0x0

    .line 845
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    :goto_5d
    if-ge p1, v1, :cond_84

    .line 847
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 848
    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v5, v6, :cond_71

    iget-boolean v5, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v5, v4, :cond_81

    :cond_71
    :goto_71
    if-ge p1, v1, :cond_81

    if-ne v2, p0, :cond_7b

    .line 852
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    .line 854
    :cond_7b
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_71

    :cond_81
    add-int/lit8 p1, p1, 0x1

    goto :goto_5d

    .line 860
    :cond_84
    iget-object p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;->resolveInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private recordUsageStateAction(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;)V
    .registers 7

    if-eqz p1, :cond_7d

    .line 895
    iget-object v0, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    if-eqz v0, :cond_7d

    if-eqz p2, :cond_7d

    iget-object v1, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_e

    goto/16 :goto_7d

    .line 902
    :cond_e
    sget-object v1, Lcom/meizu/settings/applications/DefaultAppSettingsState;->sSystemBuiltInList:Landroid/util/SparseArray;

    iget v0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 903
    iget-object p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_7e

    move-object p1, v1

    goto :goto_40

    :sswitch_22
    const-string/jumbo p1, "video_default"

    goto :goto_40

    :sswitch_26
    const-string/jumbo p1, "sms_default"

    goto :goto_40

    :sswitch_2a
    const-string/jumbo p1, "phone_default"

    goto :goto_40

    :sswitch_2e
    const-string p1, "music_default"

    goto :goto_40

    :sswitch_31
    const-string p1, "launcher_default"

    goto :goto_40

    :sswitch_34
    const-string/jumbo p1, "photo_default"

    goto :goto_40

    :sswitch_38
    const-string p1, "email_default"

    goto :goto_40

    :sswitch_3b
    const-string p1, "camera_default"

    goto :goto_40

    :sswitch_3e
    const-string p1, "browser_default"

    :goto_40
    if-nez p1, :cond_43

    return-void

    :cond_43
    if-eqz v0, :cond_4f

    .line 938
    iget-object v2, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    .line 939
    :goto_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordUsageStateAction action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  value = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void

    :sswitch_data_7e
    .sparse-switch
        0x7f12040f -> :sswitch_3e
        0x7f120438 -> :sswitch_3b
        0x7f1207b3 -> :sswitch_38
        0x7f1208f5 -> :sswitch_34
        0x7f1209e1 -> :sswitch_31
        0x7f120d43 -> :sswitch_2e
        0x7f120fee -> :sswitch_2a
        0x7f12145e -> :sswitch_26
        0x7f121767 -> :sswitch_22
    .end sparse-switch
.end method

.method private removeVideoType(Landroid/content/pm/ResolveInfo;)V
    .registers 3

    .line 1058
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1060
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1061
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "video/mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1062
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1f
    return-void
.end method

.method private setDefaultCommon(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 952
    iget-boolean v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->isEmpty:Z

    if-eqz v0, :cond_b

    const/4 p2, 0x0

    .line 953
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->setPersistentPreferredActivity(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Landroid/content/pm/ResolveInfo;)V

    goto :goto_1b

    .line 955
    :cond_b
    iget-object p2, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->activityInfo:Landroid/content/pm/ResolveInfo;

    if-eqz p2, :cond_1b

    .line 957
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1b

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_18

    goto :goto_1b

    .line 960
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->setPersistentPreferredActivity(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Landroid/content/pm/ResolveInfo;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private setDefaultSms(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 948
    :cond_3
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private setPersistentPreferredActivity(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Landroid/content/pm/ResolveInfo;)V
    .registers 9

    .line 965
    invoke-direct {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->buildAllCatagoryDatas()Landroid/util/SparseArray;

    move-result-object v0

    .line 966
    iget-object v1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    .line 968
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    .line 969
    iget-object v3, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    .line 970
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_a

    .line 973
    :cond_1f
    invoke-direct {p0, v3}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->clearPackagePersistentPreferredActivities(Ljava/lang/String;)V

    .line 974
    invoke-direct {p0, v3}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_a

    :cond_26
    if-eqz p2, :cond_2b

    .line 979
    invoke-direct {p0, p2, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->addPersistentPreferredActivity(Landroid/content/pm/ResolveInfo;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V

    .line 985
    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    .line 986
    iget-object v1, v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 987
    :goto_3e
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 988
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 989
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    .line 990
    iget-object v4, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v4, v4, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    iget-object v5, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v5, v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    if-eq v4, v5, :cond_a0

    iget-object v4, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    if-eqz v4, :cond_a0

    iget-object v4, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    if-eqz v4, :cond_a0

    .line 993
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_68

    goto :goto_a0

    .line 996
    :cond_68
    iget-object v4, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "re-add PersistentPreferredActivities packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " categoryName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget-object v5, v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " categoryId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v5, v5, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    iget-object v4, v3, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4, v3}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->addPersistentPreferredActivity(Landroid/content/pm/ResolveInfo;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V

    :cond_a0
    :goto_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_a3
    return-void
.end method

.method private skipThisCategory(I)Z
    .registers 3

    const v0, 0x7f1209e1

    if-ne p1, v0, :cond_f

    .line 457
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    .line 458
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAppCategories()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;",
            ">;"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_3
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mAppCategories:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 867
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCatagoryDatas()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;",
            ">;"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_3
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mCategoryDatas:Landroid/util/SparseArray;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 873
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method protected getDefaultBrowserAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .registers 9

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultAppSettingsState"

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get default browser package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    new-instance v6, Landroid/content/pm/PackageItemInfo;

    iget-object v7, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPm:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    .line 562
    invoke-virtual {v7, v0, v5, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-direct {v6, p0}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)V
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3b} :catch_3c

    return-object v1

    :catch_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultBrowserAppLabel(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 4

    .line 569
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->isAvailable(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 572
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getDefaultBrowserAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 573
    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 574
    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    return-object v1

    .line 577
    :cond_19
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getOnlyBrowserAppLabel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultBrowserKey()Ljava/lang/String;
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleRefreshList()V
    .registers 3

    .line 1207
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1208
    :try_start_4
    iput-boolean v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    .line 1209
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public hasData()Z
    .registers 2

    .line 877
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_3
    iget-boolean p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 879
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isAvailable(Landroid/content/Intent;)Z
    .registers 2

    .line 592
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getCandidates(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 593
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isCtsOrInternationalRunning(Landroid/content/Context;)Z
    .registers 2

    .line 1213
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public onBootComplete()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDefault(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;I)V
    .registers 6

    .line 883
    iget-object v0, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget v0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    const v1, 0x7f12145e

    if-ne v0, v1, :cond_f

    .line 884
    iget-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->setDefaultSms(Ljava/lang/String;)V

    goto :goto_12

    .line 886
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->setDefaultCommon(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;)V

    .line 888
    :goto_12
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->recordUsageStateAction(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;)V

    const/4 p1, 0x0

    .line 889
    iput-boolean p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHasData:Z

    .line 890
    iget-object p2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected setDefaultBrowserKey(Ljava/lang/String;)Z
    .registers 3

    .line 632
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mPackageManager:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mUserId:I

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public startGetCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 330
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_10
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startGetList(Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;I)V
    .registers 4

    if-eqz p1, :cond_f

    .line 316
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mListeners:Ljava/util/ArrayList;

    .line 317
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 318
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_f
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_25

    .line 321
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_25
    return-void
.end method

.method public startHandleInstall(Landroid/content/Intent;)V
    .registers 3

    const/16 v0, 0x8

    .line 1151
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->handlePkgChange(Landroid/content/Intent;I)V

    return-void
.end method

.method public startHandleUninstall(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x7

    .line 1155
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->handlePkgChange(Landroid/content/Intent;I)V

    return-void
.end method

.method public stop(Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;)V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mBackgroundHandler:Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
