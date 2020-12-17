.class public final Lcom/flyme/systemui/developer/DeveloperSettingsController;
.super Ljava/lang/Object;
.source "DeveloperSettingsController.java"


# static fields
.field private static sInstance:Lcom/flyme/systemui/developer/DeveloperSettingsController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeveloperEnable:Landroid/database/ContentObserver;

.field private mDeveloperNotification:Landroid/app/Notification;

.field private mDeveloperOptionEnable:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/flyme/systemui/developer/DeveloperSettingsController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/developer/DeveloperSettingsController$1;-><init>(Lcom/flyme/systemui/developer/DeveloperSettingsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperEnable:Landroid/database/ContentObserver;

    .line 52
    iput-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mContext:Landroid/content/Context;

    .line 53
    iget-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 54
    iget-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mResolver:Landroid/content/ContentResolver;

    .line 56
    iget-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "display_developer_mode_notification"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperEnable:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    iget-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperOptionEnable:Z

    .line 63
    invoke-direct {p0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->buildDeveloperOptionNotification()V

    .line 65
    invoke-direct {p0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->updateDeveloperNotification()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/developer/DeveloperSettingsController;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperOptionEnable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/developer/DeveloperSettingsController;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperOptionEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/developer/DeveloperSettingsController;)Landroid/content/ContentResolver;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/developer/DeveloperSettingsController;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->updateDeveloperNotification()V

    return-void
.end method

.method private buildDeveloperOptionNotification()V
    .registers 9

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.action.DEVELOPMENT_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v3, "DeveloperSettings"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v4, 0x0

    .line 83
    invoke-virtual {v1, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v5, 0x1

    .line 84
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 85
    iget-object v6, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    iget-object v6, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->developer_notification_appname:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.substName"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Lcom/android/systemui/R$drawable;->ic_developer:I

    .line 91
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->developer_notification_title:I

    .line 92
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->developer_notification_content:I

    .line 93
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v3, -0x2

    .line 97
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperNotification:Landroid/app/Notification;

    .line 103
    iget-object p0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperNotification:Landroid/app/Notification;

    iget-object p0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    sget v0, Lcom/android/systemui/R$drawable;->ic_developer:I

    iput v0, p0, Landroid/app/NotificationExt;->notificationIcon:I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/developer/DeveloperSettingsController;
    .registers 3

    const-class v0, Lcom/flyme/systemui/developer/DeveloperSettingsController;

    monitor-enter v0

    .line 69
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/developer/DeveloperSettingsController;->sInstance:Lcom/flyme/systemui/developer/DeveloperSettingsController;

    if-nez v1, :cond_e

    .line 70
    new-instance v1, Lcom/flyme/systemui/developer/DeveloperSettingsController;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/developer/DeveloperSettingsController;->sInstance:Lcom/flyme/systemui/developer/DeveloperSettingsController;

    .line 72
    :cond_e
    sget-object p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->sInstance:Lcom/flyme/systemui/developer/DeveloperSettingsController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateDeveloperNotification()V
    .registers 3

    .line 112
    iget-boolean v0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperOptionEnable:Z

    const v1, 0x7ffffffe

    if-eqz v0, :cond_f

    .line 113
    iget-object v0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mDeveloperNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_14

    .line 115
    :cond_f
    iget-object p0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_14
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 107
    invoke-direct {p0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->buildDeveloperOptionNotification()V

    .line 108
    invoke-direct {p0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->updateDeveloperNotification()V

    return-void
.end method
