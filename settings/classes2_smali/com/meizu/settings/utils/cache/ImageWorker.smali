.class public abstract Lcom/meizu/settings/utils/cache/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/utils/cache/ImageWorker$CacheAsyncTask;,
        Lcom/meizu/settings/utils/cache/ImageWorker$AsyncDrawable;,
        Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# instance fields
.field private WORK_THREAD:Ljava/util/concurrent/ExecutorService;

.field private mExitTasksEarly:Z

.field private mImageCache:Lcom/meizu/settings/utils/cache/ImageCache;

.field protected mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->WORK_THREAD:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mExitTasksEarly:Z

    .line 45
    iput-boolean v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mPauseWork:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/utils/cache/ImageWorker;)Ljava/lang/Object;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/utils/cache/ImageWorker;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mExitTasksEarly:Z

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/utils/cache/ImageWorker;)Lcom/meizu/settings/utils/cache/ImageCache;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mImageCache:Lcom/meizu/settings/utils/cache/ImageCache;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/utils/cache/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/utils/cache/ImageWorker;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ImageView;)Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;
    .registers 1

    .line 33
    invoke-static {p0}, Lcom/meizu/settings/utils/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;

    move-result-object p0

    return-object p0
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .registers 4

    .line 109
    invoke-static {p1}, Lcom/meizu/settings/utils/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    .line 112
    invoke-static {p1}, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->access$000(Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {p1}, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->access$100(Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 114
    :cond_1c
    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1f
    return v0
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;
    .registers 2

    if-eqz p0, :cond_11

    .line 127
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 128
    instance-of v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$AsyncDrawable;

    if-eqz v0, :cond_11

    .line 129
    check-cast p0, Lcom/meizu/settings/utils/cache/ImageWorker$AsyncDrawable;

    .line 130
    invoke-virtual {p0}, Lcom/meizu/settings/utils/cache/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 238
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addImageCache(Landroid/app/FragmentManager;Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)V
    .registers 3

    .line 83
    invoke-static {p1, p2}, Lcom/meizu/settings/utils/cache/ImageCache;->getInstance(Landroid/app/FragmentManager;Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)Lcom/meizu/settings/utils/cache/ImageCache;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mImageCache:Lcom/meizu/settings/utils/cache/ImageCache;

    return-void
.end method

.method public clearCache()V
    .registers 4

    .line 271
    new-instance v0, Lcom/meizu/settings/utils/cache/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/cache/ImageWorker$CacheAsyncTask;-><init>(Lcom/meizu/settings/utils/cache/ImageWorker;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected clearCacheInternal()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mImageCache:Lcom/meizu/settings/utils/cache/ImageCache;

    if-eqz v0, :cond_a

    .line 265
    invoke-virtual {v0}, Lcom/meizu/settings/utils/cache/ImageCache;->clearCache()V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mImageCache:Lcom/meizu/settings/utils/cache/ImageCache;

    :cond_a
    return-void
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 6

    if-nez p1, :cond_6

    .line 61
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mImageCache:Lcom/meizu/settings/utils/cache/ImageCache;

    if-eqz v1, :cond_13

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/settings/utils/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_19

    .line 72
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_36

    .line 73
    :cond_19
    invoke-static {p1, p2}, Lcom/meizu/settings/utils/cache/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 74
    new-instance v0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;-><init>(Lcom/meizu/settings/utils/cache/ImageWorker;Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 75
    new-instance p1, Lcom/meizu/settings/utils/cache/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-direct {p1, v1, p3, v0}, Lcom/meizu/settings/utils/cache/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;)V

    .line 76
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker;->WORK_THREAD:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_36
    :goto_36
    return-void
.end method

.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;
.end method
