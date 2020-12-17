.class public Lcom/android/systemui/screenshot/ScreenshotExService;
.super Landroid/app/IntentService;
.source "ScreenshotExService.java"


# instance fields
.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "ScreenshotExService"

    .line 26
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "long_screenshot"

    const-string v2, "Screenshot"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotExService;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotExService;->mNotificationChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private showNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 15

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/jpeg"

    .line 54
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 55
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0xa0d0036

    invoke-direct {v8, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 60
    sget v2, Lcom/android/systemui/R$dimen;->notification_small_icon_white_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v3, 0xa0a0042

    move-object v2, v8

    move v4, v7

    move v5, v7

    move v6, v7

    .line 61
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const v2, 0xa0a0042

    .line 62
    invoke-virtual {v8, v2, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v2, 0x1040082

    .line 63
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0xa0a0007

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 64
    sget v3, Lcom/android/systemui/R$string;->mz_screenshot_saved_title:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0xa0a011b

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 65
    sget v3, Lcom/android/systemui/R$string;->mz_screenshot_saved_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0xa0a0118

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 67
    invoke-static {p1, v3, p4, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    const v4, 0xa0a010d

    invoke-virtual {v8, v4, p4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 68
    invoke-static {p1, v3, p5, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const p4, 0xa0a002b

    invoke-virtual {v8, p4, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 69
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotExService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez p2, :cond_86

    const-string p2, "notification"

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotExService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 71
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotExService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotExService;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 73
    :cond_86
    new-instance p2, Landroid/app/Notification$Builder;

    const-string p4, "long_screenshot"

    invoke-direct {p2, p1, p4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p4, 0x106001c

    .line 74
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p2

    sget p4, Lcom/android/systemui/R$drawable;->stat_notify_image:I

    .line 75
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 76
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 77
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/16 p2, 0x10

    const/4 p3, 0x1

    .line 79
    invoke-virtual {p1, p2, p3}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 82
    iget-object p2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "android.substName"

    .line 82
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotExService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x315

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "imageuri"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    const-string v0, "croppedicon"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Bitmap;

    const-string/jumbo v0, "shareintent"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    const-string v0, "deleteintent"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/Intent;

    if-eqz v3, :cond_38

    if-eqz v4, :cond_38

    if-eqz v5, :cond_38

    if-eqz v6, :cond_38

    .line 45
    invoke-virtual {p0}, Landroid/app/IntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/ScreenshotExService;->showNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/Intent;Landroid/content/Intent;)V

    :cond_38
    return-void
.end method
