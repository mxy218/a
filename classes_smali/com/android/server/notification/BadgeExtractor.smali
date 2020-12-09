.class public Lcom/android/server/notification/BadgeExtractor;
.super Ljava/lang/Object;
.source "BadgeExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BadgeExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 34
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 7

    .line 37
    const/4 v0, 0x0

    if-eqz p1, :cond_63

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_63

    .line 42
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_f

    .line 44
    return-object v0

    .line 46
    :cond_f
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/notification/RankingConfig;->badgingEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 48
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/notification/RankingConfig;->canShowBadge(Ljava/lang/String;I)Z

    move-result v2

    .line 49
    const/4 v3, 0x0

    if-eqz v1, :cond_4e

    if-nez v2, :cond_31

    goto :goto_4e

    .line 52
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 53
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eqz v1, :cond_45

    if-eqz v2, :cond_45

    const/4 v1, 0x1

    goto :goto_46

    :cond_45
    move v1, v3

    :goto_46
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_51

    .line 55
    :cond_4a
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_51

    .line 50
    :cond_4e
    :goto_4e
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 59
    :goto_51
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 60
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_62

    .line 61
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 64
    :cond_62
    return-object v0

    .line 39
    :cond_63
    :goto_63
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 70
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 74
    return-void
.end method
