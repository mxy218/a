.class public Lcom/meizu/settings/utils/cache/AppIconFetcher;
.super Lcom/meizu/settings/utils/cache/ImageWorker;
.source "AppIconFetcher.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mRequreSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/cache/ImageWorker;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/meizu/settings/utils/cache/AppIconFetcher;->mRequreSize:I

    .line 27
    iput-object p1, p0, Lcom/meizu/settings/utils/cache/AppIconFetcher;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    .line 119
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 120
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v0, 0x1

    if-gt p0, p3, :cond_9

    if-le p1, p2, :cond_16

    .line 125
    :cond_9
    div-int/lit8 p0, p0, 0x2

    .line 126
    div-int/lit8 p1, p1, 0x2

    .line 131
    :goto_d
    div-int v1, p0, v0

    if-gt v1, p3, :cond_17

    div-int v1, p1, v0

    if-le v1, p2, :cond_16

    goto :goto_17

    :cond_16
    return v0

    :cond_17
    :goto_17
    mul-int/lit8 v0, v0, 0x2

    goto :goto_d
.end method

.method private decodeSampledBitmapFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    :try_start_6
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 72
    instance-of v4, v3, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_22

    .line 73
    invoke-static {v3}, Lcom/meizu/settings/utils/MzUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 75
    invoke-static {v3}, Lcom/meizu/settings/utils/MzUtils;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 76
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1e

    move-object v3, v0

    move v0, v1

    goto :goto_24

    :catch_1e
    move-exception v3

    .line 80
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    move-object v3, v0

    move v0, v2

    .line 84
    :goto_24
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 85
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_32

    .line 87
    array-length v1, v3

    invoke-static {v3, v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_35

    .line 90
    :cond_32
    invoke-static {p1, p2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 94
    :goto_35
    iget v1, p0, Lcom/meizu/settings/utils/cache/AppIconFetcher;->mRequreSize:I

    const/4 v5, -0x1

    if-ne v5, v1, :cond_4b

    .line 95
    iget-object v1, p0, Lcom/meizu/settings/utils/cache/AppIconFetcher;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4b

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f07007f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/utils/cache/AppIconFetcher;->mRequreSize:I

    .line 100
    :cond_4b
    iget v1, p0, Lcom/meizu/settings/utils/cache/AppIconFetcher;->mRequreSize:I

    if-eq v5, v1, :cond_55

    .line 101
    invoke-direct {p0, v4, v1, v1}, Lcom/meizu/settings/utils/cache/AppIconFetcher;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    iput p0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 106
    :cond_55
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_5f

    .line 109
    array-length p0, v3

    invoke-static {v3, v2, p0, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 112
    :cond_5f
    invoke-static {p1, p2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 6

    const/4 v0, 0x0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/meizu/settings/utils/cache/AppIconFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 46
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-direct {p0, v1, v3}, Lcom/meizu/settings/utils/cache/AppIconFetcher;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 51
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, v3, v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a

    move-object v0, p0

    goto :goto_43

    :catch_2a
    move-exception p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "getBitmap() %s, E:%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIconFetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    :goto_43
    return-object v0
.end method


# virtual methods
.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/cache/AppIconFetcher;->getBitmap(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method
