.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mTickerAddSpace:Z


# instance fields
.field private SCENE_GAME:Ljava/lang/String;

.field private mCroppedIcon:Landroid/graphics/Bitmap;

.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private mImageFileTitle:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mScreenshotDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .registers 16

    .line 175
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCroppedIcon:Landroid/graphics/Bitmap;

    const-string v0, "game"

    .line 172
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCENE_GAME:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 182
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "MMdd-HHmmssSS"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v3, v6

    const-string v1, "S%s"

    .line 185
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 188
    new-instance v3, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    const-string v9, "Screenshots"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 192
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 194
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v6

    .line 197
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 199
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    :cond_f2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 205
    iget-object v1, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 206
    iget-object v1, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 207
    iget v8, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 212
    iget v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    if-ge v1, v2, :cond_111

    goto :goto_112

    :cond_111
    move v1, v2

    .line 213
    :goto_112
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 214
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v3, 0x3f800000  # 1.0f

    .line 215
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 216
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 217
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    iget v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const v11, 0xffffff

    .line 222
    iget-object v6, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object v5, p0

    move v7, v8

    .line 223
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 226
    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCroppedIcon:Landroid/graphics/Bitmap;

    .line 230
    sget-boolean v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/2addr v1, v4

    sput-boolean v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 231
    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 239
    new-instance p3, Landroid/app/Notification$Builder;

    invoke-direct {p3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/systemui/R$string;->screenshot_saving_title:I

    .line 240
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$string;->screenshot_saving_text:I

    .line 241
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$drawable;->stat_notify_image:I

    .line 242
    invoke-virtual {p3, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    const-string v3, "progress"

    .line 243
    invoke-virtual {p3, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p3

    const-wide/16 v5, 0x0

    .line 246
    invoke-virtual {p3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 248
    invoke-virtual {p3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    const v3, 0x106001c

    .line 249
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 253
    new-instance p3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {p3, p2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 255
    new-instance p2, Landroid/app/Notification$Builder;

    invoke-direct {p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p3, Lcom/android/systemui/R$string;->screenshot_saving_ticker:I

    .line 256
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    sget-boolean p3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz p3, :cond_1b7

    const-string p3, " "

    goto :goto_1b9

    :cond_1b7
    const-string p3, ""

    :goto_1b9
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->screenshot_saving_title:I

    .line 258
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->screenshot_saving_text:I

    .line 259
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$drawable;->stat_notify_image:I

    .line 260
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 261
    invoke-virtual {p1, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 264
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 265
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 267
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object p1, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    const p2, 0xa0802d7

    invoke-virtual {p1, p2}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 269
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1, v4}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    const-string/jumbo p0, "takeScreenshot"

    const-string p1, "screenshot is saving..."

    .line 274
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 298
    new-instance p0, Landroid/graphics/Picture;

    invoke-direct {p0}, Landroid/graphics/Picture;-><init>()V

    .line 299
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p2

    .line 300
    invoke-virtual {p2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 301
    invoke-virtual {p2, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 302
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 303
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 138
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 16

    const-string p1, "dismiss-keyguard"

    const-string/jumbo v0, "takeScreenshot"

    const-string v1, "mob_event"

    const-string v2, "file_path"

    const-string v3, "image/png"

    .line 308
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_13

    return-object v5

    :cond_13
    const/4 v4, -0x2

    .line 314
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 316
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v6, v4, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 317
    iget-object v4, v4, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 324
    :try_start_1d
    iget-wide v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 325
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCENE_GAME:Ljava/lang/String;

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v10

    const-string v11, "getScene"

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v13}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 326
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isGameMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_7f

    .line 328
    new-instance v9, Ljava/io/File;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screenshots"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "Game"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 330
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v11, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 334
    :cond_7f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mImageFilePath="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 339
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 340
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v4, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 341
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 342
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 345
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 346
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "_data"

    .line 347
    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    .line 349
    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_display_name"

    .line 351
    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "datetaken"

    .line 352
    iget-wide v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "date_added"

    .line 353
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "date_modified"

    .line 354
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "mime_type"

    .line 356
    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "width"

    .line 358
    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "height"

    .line 359
    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "_size"

    .line 360
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 363
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "hh:mma, MMM dd, yyyy"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Screenshot (%s)"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v12

    .line 365
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 366
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.extra.STREAM"

    .line 370
    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "android.intent.extra.SUBJECT"

    .line 371
    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    new-instance v4, Landroid/content/Intent;

    const-class v9, Lcom/android/systemui/screenshot/GlobalScreenshot$TargetChosenReceiver;

    invoke-direct {v4, v6, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v9, 0x50000000

    invoke-static {v6, v12, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 382
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.action.DELETE_SCREENSHOT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {v4, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.systemui.action.SHARE_SCREENSHOT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v6, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {v7, p1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "intent"

    .line 391
    invoke-virtual {v6, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 392
    invoke-virtual {v6, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    .line 393
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 403
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 404
    invoke-virtual {v2, p1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 407
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 408
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput v12, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    .line 409
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->shareIntent:Landroid/content/Intent;

    const-string p1, "GlobalScreenshot"

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImageFilePath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->path:Ljava/lang/String;

    .line 412
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->deleteIntent:Landroid/content/Intent;

    .line 413
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput-object v2, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->launchIntent:Landroid/content/Intent;
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d8} :catch_1d9

    goto :goto_1e4

    .line 417
    :catch_1d9
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 418
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_save_text:I

    iput p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    :goto_1e4
    return-object v5
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .line 138
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .registers 2

    .line 463
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 464
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 465
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 468
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p1, 0x315

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 138
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4

    .line 431
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    if-eqz v0, :cond_e

    .line 433
    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    goto :goto_31

    .line 437
    :cond_e
    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 441
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "mob_event"

    .line 443
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v1, "image/png"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 446
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 454
    :goto_31
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 455
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method
