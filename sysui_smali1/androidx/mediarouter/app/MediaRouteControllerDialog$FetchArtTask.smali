.class Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;
.super Landroid/os/AsyncTask;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
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

.field private mStartTimeMillis:J

.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .registers 5

    .line 1356
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1357
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v0, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1358
    :goto_10
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v0, "MediaRouteCtrlDialog"

    const-string v2, "Can\'t fetch the given art bitmap because it\'s already recycled."

    .line 1359
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1362
    :cond_1e
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1363
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez p1, :cond_25

    goto :goto_29

    :cond_25
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    :goto_29
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-void
.end method

.method private openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1460
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    .line 1462
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "content"

    .line 1463
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "file"

    .line 1464
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_3d

    .line 1467
    :cond_21
    new-instance p0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 1469
    sget p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->CONNECTION_TIMEOUT_MILLIS:I

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1470
    sget p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->CONNECTION_TIMEOUT_MILLIS:I

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1471
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_49

    .line 1465
    :cond_3d
    :goto_3d
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    :goto_49
    if-nez p0, :cond_4d

    const/4 p0, 0x0

    goto :goto_53

    .line 1473
    :cond_4d
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, p1

    :goto_53
    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 11

    const-string p1, "Unable to open: "

    .line 1383
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MediaRouteCtrlDialog"

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    move-object p1, v0

    goto/16 :goto_cc

    .line 1385
    :cond_e
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_cb

    .line 1388
    :try_start_12
    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_a8
    .catchall {:try_start_12 .. :try_end_16} :catchall_a5

    if-nez v0, :cond_32

    .line 1389
    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2c} :catch_a3
    .catchall {:try_start_18 .. :try_end_2c} :catchall_c4

    if-eqz v0, :cond_31

    .line 1424
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    :cond_31
    return-object v4

    .line 1393
    :cond_32
    :try_start_32
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1394
    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1395
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1396
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v6, :cond_9d

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_42} :catch_a3
    .catchall {:try_start_32 .. :try_end_42} :catchall_c4

    if-nez v6, :cond_45

    goto :goto_9d

    .line 1401
    :cond_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_c4

    goto :goto_6e

    .line 1404
    :catch_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1405
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 1406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_68} :catch_a3
    .catchall {:try_start_49 .. :try_end_68} :catchall_c4

    if-eqz v0, :cond_6d

    .line 1424
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6d

    :catch_6d
    :cond_6d
    return-object v4

    .line 1411
    :cond_6e
    :goto_6e
    :try_start_6e
    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1412
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7, v8}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getDesiredArtHeight(II)I

    move-result v6

    .line 1413
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v7, v6

    .line 1414
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1415
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_8b} :catch_a3
    .catchall {:try_start_6e .. :try_end_8b} :catchall_c4

    if-eqz v6, :cond_93

    if-eqz v0, :cond_92

    .line 1424
    :try_start_8f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_92

    :catch_92
    :cond_92
    return-object v4

    .line 1418
    :cond_93
    :try_start_93
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_97} :catch_a3
    .catchall {:try_start_93 .. :try_end_97} :catchall_c4

    if-eqz v0, :cond_cc

    .line 1424
    :try_start_99
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_cc

    goto :goto_cc

    :cond_9d
    :goto_9d
    if-eqz v0, :cond_a2

    :try_start_9f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a2

    :catch_a2
    :cond_a2
    return-object v4

    :catch_a3
    move-exception v5

    goto :goto_aa

    :catchall_a5
    move-exception p0

    move-object v0, v4

    goto :goto_c5

    :catch_a8
    move-exception v5

    move-object v0, v4

    .line 1420
    :goto_aa
    :try_start_aa
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_aa .. :try_end_be} :catchall_c4

    if-eqz v0, :cond_cb

    .line 1424
    :try_start_c0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_cb

    goto :goto_cb

    :catchall_c4
    move-exception p0

    :goto_c5
    if-eqz v0, :cond_ca

    :try_start_c7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_ca

    .line 1426
    :catch_ca
    :cond_ca
    throw p0

    :catch_cb
    :cond_cb
    :goto_cb
    move-object p1, v4

    .line 1430
    :catch_cc
    :cond_cc
    :goto_cc
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t use recycled bitmap: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_e7
    if-eqz p1, :cond_11a

    .line 1434
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_11a

    .line 1436
    new-instance v0, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v0, p1}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroidx/palette/graphics/Palette$Builder;->maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10a

    goto :goto_118

    .line 1438
    :cond_10a
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    :goto_118
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mBackgroundColor:I

    :cond_11a
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1347
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 1367
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIconUri()Landroid/net/Uri;
    .registers 1

    .line 1371
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1445
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 1446
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 1447
    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1448
    :cond_1b
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 1449
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 1450
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 1451
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mBackgroundColor:I

    iput p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    const/4 p1, 0x1

    .line 1452
    iput-boolean p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    .line 1453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mStartTimeMillis:J

    sub-long/2addr v0, v2

    .line 1455
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-lez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    :cond_42
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1347
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 1376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mStartTimeMillis:J

    .line 1377
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->clearLoadedBitmap()V

    return-void
.end method
