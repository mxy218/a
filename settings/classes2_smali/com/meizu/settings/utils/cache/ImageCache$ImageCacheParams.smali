.class public Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/cache/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1400

    .line 119
    iput v0, p0, Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;->memCacheSize:I

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    return-void
.end method


# virtual methods
.method public setMemCacheSizePercent(F)V
    .registers 4

    const v0, 0x3c23d70a  # 0.01f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_22

    const v0, 0x3f4ccccd  # 0.8f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_22

    .line 145
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x44800000  # 1024.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;->memCacheSize:I

    return-void

    .line 143
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setMemCacheSizePercent - percent must be between 0.01 and 0.8 (inclusive)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
