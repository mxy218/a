.class public Lcom/android/systemui/screenrecord/RecordingService;
.super Landroid/app/Service;
.source "RecordingService.java"


# instance fields
.field private mInputSurface:Landroid/view/Surface;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mRecordingNotificationBuilder:Landroid/app/Notification$Builder;

.field private mShowTaps:Z

.field private mTempFile:Ljava/io/File;

.field private mUseAudio:Z

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createRecordingNotification()V
    .registers 6

    .line 283
    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Lcom/android/systemui/R$string;->screenrecord_name:I

    .line 285
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_record"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 287
    sget v1, Lcom/android/systemui/R$string;->screenrecord_channel_description:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 288
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const-string v3, "notification"

    .line 290
    invoke-virtual {p0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 291
    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 293
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/android/systemui/R$drawable;->ic_android:I

    .line 294
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$string;->screenrecord_name:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecordingNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/screenrecord/RecordingService;->setNotificationActions(ZLandroid/app/NotificationManager;)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecordingNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private createSaveNotification(Landroid/net/Uri;)Landroid/app/Notification;
    .registers 10

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10000001

    .line 334
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "video/mp4"

    .line 335
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 337
    new-instance v1, Landroid/app/Notification$Action$Builder;

    sget v2, Lcom/android/systemui/R$drawable;->ic_android:I

    .line 338
    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 339
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->screenrecord_share_label:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/systemui/screenrecord/RecordingService;->getShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x8000000

    const/4 v6, 0x2

    .line 340
    invoke-static {p0, v6, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 345
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 347
    new-instance v2, Landroid/app/Notification$Action$Builder;

    sget v3, Lcom/android/systemui/R$drawable;->ic_android:I

    .line 348
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 349
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/systemui/R$string;->screenrecord_delete_label:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/systemui/screenrecord/RecordingService;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 350
    invoke-static {p0, v6, v7, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 355
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 357
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "screen_record"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v4, Lcom/android/systemui/R$drawable;->ic_android:I

    .line 358
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 359
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenrecord_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 360
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenrecord_save_message:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/high16 v4, 0x4000000

    .line 361
    invoke-static {p0, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 368
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 373
    :try_start_a3
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 374
    sget-object v2, Landroid/provider/MediaStore$ThumbnailConstants;->MINI_SIZE:Landroid/graphics/Point;

    invoke-static {v2}, Landroid/graphics/Point;->convert(Landroid/graphics/Point;)Landroid/util/Size;

    move-result-object v2

    .line 375
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b1} :catch_b2

    goto :goto_d1

    :catch_b2
    move-exception p0

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating thumbnail: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RecordingService"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, v1

    :goto_d1
    if-eqz p0, :cond_e7

    .line 381
    new-instance p1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 382
    invoke-virtual {p1, p0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 383
    invoke-virtual {p1, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 384
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 386
    :cond_e7
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static getCancelIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.CANCEL"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.DELETE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_path"

    .line 462
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getPauseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.PAUSE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getResumeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.RESUME"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_path"

    .line 457
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getStartIntent(Landroid/content/Context;ILandroid/content/Intent;ZZ)Landroid/content/Intent;
    .registers 7

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.START"

    .line 109
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_resultCode"

    .line 110
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_data"

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_useAudio"

    .line 112
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_showTaps"

    .line 113
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getStopIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.STOP"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private saveRecording(Landroid/app/NotificationManager;)V
    .registers 6

    .line 402
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'screen-\'yyyyMMdd-HHmmss\'.mp4\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 403
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 405
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    .line 406
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string/jumbo v2, "video/mp4"

    .line 407
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "date_added"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "datetaken"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "external_primary"

    .line 412
    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 414
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_4b
    const-string/jumbo v3, "w"

    .line 418
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 419
    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mTempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 420
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 422
    invoke-direct {p0, v1}, Lcom/android/systemui/screenrecord/RecordingService;->createSaveNotification(Landroid/net/Uri;)Landroid/app/Notification;

    move-result-object v0

    .line 423
    invoke-virtual {p1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 425
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mTempFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_6a} :catch_6b

    goto :goto_8f

    :catch_6b
    move-exception p1

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error saving screen recording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordingService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget p1, Lcom/android/systemui/R$string;->screenrecord_delete_error:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_8f
    return-void
.end method

.method private setNotificationActions(ZLandroid/app/NotificationManager;)V
    .registers 13

    .line 304
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_9

    .line 305
    sget v1, Lcom/android/systemui/R$string;->screenrecord_resume_label:I

    goto :goto_b

    .line 306
    :cond_9
    sget v1, Lcom/android/systemui/R$string;->screenrecord_pause_label:I

    .line 305
    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_16

    .line 307
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getResumeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1a

    :cond_16
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getPauseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 309
    :goto_1a
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecordingNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/app/Notification$Action;

    const/4 v3, 0x0

    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget v5, Lcom/android/systemui/R$drawable;->ic_android:I

    .line 311
    invoke-static {p0, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 312
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$string;->screenrecord_stop_label:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 314
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x8000000

    const/4 v9, 0x2

    invoke-static {p0, v9, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 316
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Landroid/app/Notification$Action$Builder;

    sget v4, Lcom/android/systemui/R$drawable;->ic_android:I

    .line 318
    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 319
    invoke-static {p0, v9, p1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v3, v4, v0, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 321
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    new-instance p1, Landroid/app/Notification$Action$Builder;

    sget v3, Lcom/android/systemui/R$drawable;->ic_android:I

    .line 323
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 324
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenrecord_cancel_label:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getCancelIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {p0, v9, v5, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {p1, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 328
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    aput-object p1, v2, v9

    .line 309
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 329
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecordingNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private setTapsVisible(Z)V
    .registers 3

    .line 435
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_touches"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private startRecording()V
    .registers 14

    const-string v0, "RecordingService"

    :try_start_2
    const-string/jumbo v1, "temp"

    const-string v2, ".mp4"

    .line 227
    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mTempFile:Ljava/io/File;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing video output to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/screenrecord/RecordingService;->setTapsVisible(Z)V

    .line 233
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 234
    iget-boolean v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUseAudio:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    .line 235
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 237
    :cond_3d
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 241
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 242
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 243
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 244
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 245
    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 246
    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 247
    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v4, 0x5b8d80

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 250
    iget-boolean v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUseAudio:Z

    if-eqz v3, :cond_8a

    .line 251
    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 252
    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 253
    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 254
    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 257
    :cond_8a
    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mTempFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 261
    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mInputSurface:Landroid/view/Surface;

    .line 262
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string v5, "Recording Display"

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x10

    iget-object v10, p0, Lcom/android/systemui/screenrecord/RecordingService;->mInputSurface:Landroid/view/Surface;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 272
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b5} :catch_b9

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createRecordingNotification()V

    return-void

    :catch_b9
    move-exception p0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error starting screen recording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private stopRecording()V
    .registers 3

    const/4 v0, 0x0

    .line 390
    invoke-direct {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->setTapsVisible(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 394
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V

    .line 395
    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 396
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 398
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 2

    .line 216
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "media_projection"

    .line 219
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10

    const/4 p2, 0x2

    if-nez p1, :cond_4

    return p2

    .line 121
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v2, -0x1

    .line 127
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_16a

    goto :goto_76

    :sswitch_31
    const-string v3, "com.android.systemui.screenrecord.STOP"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_76

    goto :goto_77

    :sswitch_3a
    const-string p2, "com.android.systemui.screenrecord.RESUME"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const/4 p2, 0x4

    goto :goto_77

    :sswitch_44
    const-string p2, "com.android.systemui.screenrecord.DELETE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const/4 p2, 0x6

    goto :goto_77

    :sswitch_4e
    const-string p2, "com.android.systemui.screenrecord.CANCEL"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    move p2, v5

    goto :goto_77

    :sswitch_58
    const-string p2, "com.android.systemui.screenrecord.START"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    move p2, v4

    goto :goto_77

    :sswitch_62
    const-string p2, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const/4 p2, 0x5

    goto :goto_77

    :sswitch_6c
    const-string p2, "com.android.systemui.screenrecord.PAUSE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const/4 p2, 0x3

    goto :goto_77

    :cond_76
    :goto_76
    move p2, v2

    :goto_77
    const-string p3, "extra_path"

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    packed-switch p2, :pswitch_data_188

    goto/16 :goto_169

    .line 190
    :pswitch_80  #0x6
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 193
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    .line 194
    invoke-virtual {p2, p1, p3, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 196
    sget p2, Lcom/android/systemui/R$string;->screenrecord_delete_description:I

    invoke-static {p0, p2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deleted recording "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_169

    .line 172
    :pswitch_ba  #0x5
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 174
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "video/mp4"

    .line 175
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "android.intent.extra.STREAM"

    .line 176
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$string;->screenrecord_share_label:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 180
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 185
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto :goto_169

    .line 167
    :pswitch_f9  #0x4
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->resume()V

    .line 168
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/screenrecord/RecordingService;->setNotificationActions(ZLandroid/app/NotificationManager;)V

    goto :goto_169

    .line 162
    :pswitch_102  #0x3
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->pause()V

    .line 163
    invoke-direct {p0, v5, v0}, Lcom/android/systemui/screenrecord/RecordingService;->setNotificationActions(ZLandroid/app/NotificationManager;)V

    goto :goto_169

    .line 157
    :pswitch_10b  #0x2
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->stopRecording()V

    .line 158
    invoke-direct {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->saveRecording(Landroid/app/NotificationManager;)V

    goto :goto_169

    .line 140
    :pswitch_112  #0x1
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->stopRecording()V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mTempFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_12c

    const-string p1, "Error canceling screen recording!"

    .line 144
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget p1, Lcom/android/systemui/R$string;->screenrecord_delete_error:I

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_135

    .line 148
    :cond_12c
    sget p1, Lcom/android/systemui/R$string;->screenrecord_cancel_success:I

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 153
    :goto_135
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_169

    :pswitch_13e  #0x0
    const-string p2, "extra_resultCode"

    .line 129
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "extra_useAudio"

    .line 130
    invoke-virtual {p1, p3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUseAudio:Z

    const-string p3, "extra_showTaps"

    .line 131
    invoke-virtual {p1, p3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    const-string p3, "extra_data"

    .line 132
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_169

    .line 134
    iget-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p3, p2, p1}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->startRecording()V

    :cond_169
    :goto_169
    return v5

    :sswitch_data_16a
    .sparse-switch
        -0x64cc25bc -> :sswitch_6c
        -0x649efbd3 -> :sswitch_62
        -0x64998750 -> :sswitch_58
        -0x4aeafc34 -> :sswitch_4e
        -0x48fea503 -> :sswitch_44
        -0x31176281 -> :sswitch_3a
        -0x1c04f22c -> :sswitch_31
    .end sparse-switch

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_13e  #00000000
        :pswitch_112  #00000001
        :pswitch_10b  #00000002
        :pswitch_102  #00000003
        :pswitch_f9  #00000004
        :pswitch_ba  #00000005
        :pswitch_80  #00000006
    .end packed-switch
.end method
