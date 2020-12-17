.class Lcom/meizu/settings/utils/cache/ImageCache$1;
.super Landroid/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/utils/cache/ImageCache;->init(Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/cache/ImageCache;


# direct methods
.method constructor <init>(Lcom/meizu/settings/utils/cache/ImageCache;I)V
    .registers 3

    .line 69
    iput-object p1, p0, Lcom/meizu/settings/utils/cache/ImageCache$1;->this$0:Lcom/meizu/settings/utils/cache/ImageCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 69
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/utils/cache/ImageCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result p0

    return p0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .registers 3

    .line 77
    invoke-static {p2}, Lcom/meizu/settings/utils/cache/ImageCache;->getBitmapSize(Landroid/graphics/drawable/BitmapDrawable;)I

    move-result p0

    div-int/lit16 p0, p0, 0x400

    if-nez p0, :cond_9

    const/4 p0, 0x1

    :cond_9
    return p0
.end method
