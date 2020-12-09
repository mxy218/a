.class public Lcom/android/server/notification/NotificationChannelExtractor;
.super Ljava/lang/Object;
.source "NotificationChannelExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChannelExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 32
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 8

    .line 35
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2c

    .line 40
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_f

    .line 42
    return-object v0

    .line 45
    :cond_f
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 46
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 45
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/notification/RankingConfig;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 48
    return-object v0

    .line 37
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 54
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 59
    return-void
.end method
