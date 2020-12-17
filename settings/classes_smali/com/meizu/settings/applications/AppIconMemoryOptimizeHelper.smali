.class public Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;
.super Ljava/lang/Object;
.source "AppIconMemoryOptimizeHelper.java"


# static fields
.field private static final DBG:Z

.field private static final IGONORE_LIST:[Ljava/lang/String;

.field private static final cacheSize:I

.field private static mInstance:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

.field private static final maxMemory:I

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequreSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "AppIconMemoryOptimizeHelper"

    const/4 v1, 0x3

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->DBG:Z

    const-string v0, "com.android.calendar"

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->IGONORE_LIST:[Ljava/lang/String;

    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->maxMemory:I

    .line 36
    sget v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->maxMemory:I

    div-int/lit8 v0, v0, 0x10

    sput v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->cacheSize:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$1;

    sget v1, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->cacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$1;-><init>(Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;I)V

    iput-object v0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mMemoryCache:Landroid/util/LruCache;

    .line 52
    new-instance v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$2;-><init>(Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mRequreSize:I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AppIconMemoryOptimizeHelper maxMemory  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->maxMemory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "KB cacheSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->cacheSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mContext:Landroid/content/Context;

    .line 81
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.meizu.theme.change"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;
    .registers 3

    .line 87
    sget-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mInstance:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    if-nez v0, :cond_17

    .line 88
    sget-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_7
    sget-object v1, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mInstance:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    if-nez v1, :cond_12

    .line 90
    new-instance v1, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mInstance:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    .line 92
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 94
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mInstance:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    return-object p0
.end method

.method private getOrignalIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 170
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3} :catch_f

    .line 175
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 177
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_e
    return-object p1

    :catch_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static printLog(Ljava/lang/String;)V
    .registers 2

    .line 323
    sget-boolean v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "AppIconMemoryOptimizeHelper"

    .line 324
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static removeInstance()V
    .registers 1

    const-string/jumbo v0, "removeInstance"

    .line 98
    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mInstance:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    if-eqz v0, :cond_15

    .line 100
    invoke-direct {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->unregisterReceiver()V

    .line 101
    sget-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mInstance:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->emptyCache()V

    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mInstance:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    :cond_15
    return-void
.end method

.method private skipThis(Ljava/lang/String;)Z
    .registers 6

    .line 201
    sget-object p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->IGONORE_LIST:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 202
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method private unregisterReceiver()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 300
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_35

    .line 301
    sget-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_9
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_30

    .line 303
    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBitmapToMemoryCache key = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  bitmap = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 306
    :cond_30
    monitor-exit v0

    goto :goto_35

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    :goto_35
    return-void
.end method

.method public emptyCache()V
    .registers 2

    const-string v0, "emptyCache"

    .line 315
    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_8
    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    .line 318
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 319
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 155
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 159
    :cond_7
    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 111
    iget v0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mRequreSize:I

    if-lez v0, :cond_56

    const/4 v0, 0x0

    .line 117
    :try_start_5
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_9} :catch_53

    .line 123
    invoke-direct {p0, p2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->skipThis(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 124
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 125
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2d

    .line 126
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 127
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 128
    invoke-virtual {p0, p2, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_2d
    return-object p1

    .line 134
    :cond_2e
    invoke-direct {p0, p2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_35

    return-object v1

    .line 146
    :cond_35
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getOrignalIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get icon from app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    return-object p1

    .line 151
    :cond_50
    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 119
    :catch_53
    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 112
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "must init sRequreSize before scaleIcon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
