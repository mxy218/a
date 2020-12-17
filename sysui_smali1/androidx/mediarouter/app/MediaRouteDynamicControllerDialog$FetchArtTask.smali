.class Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;
.super Landroid/os/AsyncTask;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchArtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private final mIconBitmap:Landroid/graphics/Bitmap;

.field private final mIconUri:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .registers 5

    .line 1440
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1441
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v0, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1442
    :goto_10
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v0, "MediaRouteCtrlDialog"

    const-string v2, "Can\'t fetch the given art bitmap because it\'s already recycled."

    .line 1443
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1446
    :cond_1e
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1447
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez p1, :cond_25

    goto :goto_29

    :cond_25
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    :goto_29
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-void
.end method

.method private openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1543
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    .line 1545
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "content"

    .line 1546
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "file"

    .line 1547
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_3b

    .line 1550
    :cond_21
    new-instance p0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const/16 p1, 0x7530

    .line 1552
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1553
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1554
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_47

    .line 1548
    :cond_3b
    :goto_3b
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    :goto_47
    if-nez p0, :cond_4b

    const/4 p0, 0x0

    goto :goto_51

    .line 1556
    :cond_4b
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, p1

    :goto_51
    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 10

    const-string p1, "Unable to open: "

    .line 1466
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MediaRouteCtrlDialog"

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    move-object p1, v0

    goto/16 :goto_d0

    .line 1468
    :cond_e
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_cf

    .line 1471
    :try_start_12
    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_ac
    .catchall {:try_start_12 .. :try_end_16} :catchall_a9

    if-nez v0, :cond_32

    .line 1472
    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2c} :catch_a7
    .catchall {:try_start_18 .. :try_end_2c} :catchall_c8

    if-eqz v0, :cond_31

    .line 1508
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    :cond_31
    return-object v4

    .line 1476
    :cond_32
    :try_start_32
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1477
    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1478
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1479
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v6, :cond_a1

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_42} :catch_a7
    .catchall {:try_start_32 .. :try_end_42} :catchall_c8

    if-nez v6, :cond_45

    goto :goto_a1

    .line 1484
    :cond_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_c8

    goto :goto_6e

    .line 1487
    :catch_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1488
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 1489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_68} :catch_a7
    .catchall {:try_start_49 .. :try_end_68} :catchall_c8

    if-eqz v0, :cond_6d

    .line 1508
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6d

    :catch_6d
    :cond_6d
    return-object v4

    .line 1494
    :cond_6e
    :goto_6e
    :try_start_6e
    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1495
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v6, v6, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/mediarouter/R$dimen;->mr_cast_meta_art_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1497
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v7, v6

    .line 1498
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1499
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_8f} :catch_a7
    .catchall {:try_start_6e .. :try_end_8f} :catchall_c8

    if-eqz v6, :cond_97

    if-eqz v0, :cond_96

    .line 1508
    :try_start_93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_96

    :catch_96
    :cond_96
    return-object v4

    .line 1502
    :cond_97
    :try_start_97
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9b} :catch_a7
    .catchall {:try_start_97 .. :try_end_9b} :catchall_c8

    if-eqz v0, :cond_d0

    .line 1508
    :try_start_9d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_d0

    goto :goto_d0

    :cond_a1
    :goto_a1
    if-eqz v0, :cond_a6

    :try_start_a3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a6

    :catch_a6
    :cond_a6
    return-object v4

    :catch_a7
    move-exception v5

    goto :goto_ae

    :catchall_a9
    move-exception p0

    move-object v0, v4

    goto :goto_c9

    :catch_ac
    move-exception v5

    move-object v0, v4

    .line 1504
    :goto_ae
    :try_start_ae
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_ae .. :try_end_c2} :catchall_c8

    if-eqz v0, :cond_cf

    .line 1508
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_cf

    goto :goto_cf

    :catchall_c8
    move-exception p0

    :goto_c9
    if-eqz v0, :cond_ce

    :try_start_cb
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_ce

    .line 1510
    :catch_ce
    :cond_ce
    throw p0

    :catch_cf
    :cond_cf
    :goto_cf
    move-object p1, v4

    .line 1514
    :catch_d0
    :cond_d0
    :goto_d0
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1515
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t use recycled bitmap: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_eb
    if-eqz p1, :cond_11e

    .line 1518
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_11e

    .line 1520
    new-instance v0, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v0, p1}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroidx/palette/graphics/Palette$Builder;->maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10e

    goto :goto_11c

    .line 1522
    :cond_10e
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    :goto_11c
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mBackgroundColor:I

    :cond_11e
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1435
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method getIconBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 1451
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method getIconUri()Landroid/net/Uri;
    .registers 1

    .line 1455
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1529
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;

    .line 1530
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconUri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 1531
    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1532
    :cond_1b
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 1533
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 1534
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 1535
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mBackgroundColor:I

    iput p0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBackgroundColor:I

    const/4 p0, 0x1

    .line 1536
    iput-boolean p0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconIsLoaded:Z

    .line 1538
    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateMetadataViews()V

    :cond_31
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1435
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 1460
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->clearLoadedBitmap()V

    return-void
.end method
