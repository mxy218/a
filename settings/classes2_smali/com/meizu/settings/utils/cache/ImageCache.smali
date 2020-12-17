.class public Lcom/meizu/settings/utils/cache/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;,
        Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;
    }
.end annotation


# instance fields
.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/cache/ImageCache;->init(Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)V

    return-void
.end method

.method private static findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;
    .registers 3

    const-string v0, "ImageCache"

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;

    if-nez v1, :cond_1a

    .line 159
    new-instance v1, Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;

    invoke-direct {v1}, Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;-><init>()V

    .line 160
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1a
    return-object v1
.end method

.method public static getBitmapSize(Landroid/graphics/drawable/BitmapDrawable;)I
    .registers 1

    .line 150
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/app/FragmentManager;Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)Lcom/meizu/settings/utils/cache/ImageCache;
    .registers 3

    .line 47
    invoke-static {p0}, Lcom/meizu/settings/utils/cache/ImageCache;->findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/utils/cache/ImageCache;

    if-nez v0, :cond_14

    .line 54
    new-instance v0, Lcom/meizu/settings/utils/cache/ImageCache;

    invoke-direct {v0, p1}, Lcom/meizu/settings/utils/cache/ImageCache;-><init>(Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private init(Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)V
    .registers 3

    .line 64
    iget-boolean v0, p1, Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_d

    .line 69
    new-instance v0, Lcom/meizu/settings/utils/cache/ImageCache$1;

    iget p1, p1, Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/utils/cache/ImageCache$1;-><init>(Lcom/meizu/settings/utils/cache/ImageCache;I)V

    iput-object v0, p0, Lcom/meizu/settings/utils/cache/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    :cond_d
    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3

    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    .line 91
    :cond_5
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz p0, :cond_c

    .line 92
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_c
    return-void
.end method

.method public clearCache()V
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz p0, :cond_7

    .line 108
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    :cond_7
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz p0, :cond_b

    .line 100
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method
