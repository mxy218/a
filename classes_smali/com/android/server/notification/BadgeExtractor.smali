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

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "usageStats"  # Lcom/android/server/notification/NotificationUsageStats;

    .line 37
    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 11
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 42
    const/4 v0, 0x0

    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_7d

    .line 47
    :cond_b
    iget-object v1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_10

    .line 49
    return-object v0

    .line 51
    :cond_10
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/notification/RankingConfig;->badgingEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    .line 53
    .local v1, "userWantsBadges":Z
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    .line 54
    .local v2, "uid":I
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "origPkg":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v5, v2

    goto :goto_3e

    .line 57
    :cond_34
    iget-object v5, p0, Lcom/android/server/notification/BadgeExtractor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v5, v4, v6}, Lcom/android/server/notification/CloudNotificationHelper;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    :goto_3e
    nop

    .line 59
    .local v5, "origUid":I
    iget-object v6, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 60
    invoke-interface {v6, v4, v5}, Lcom/android/server/notification/RankingConfig;->canShowBadge(Ljava/lang/String;I)Z

    move-result v6

    .line 61
    .local v6, "appCanShowBadge":Z
    const/4 v7, 0x0

    if-eqz v1, :cond_68

    if-nez v6, :cond_4b

    goto :goto_68

    .line 64
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v8

    if-eqz v8, :cond_64

    .line 65
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v8

    if-eqz v8, :cond_5f

    if-eqz v6, :cond_5f

    const/4 v8, 0x1

    goto :goto_60

    :cond_5f
    move v8, v7

    :goto_60
    invoke-virtual {p1, v8}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_6b

    .line 67
    :cond_64
    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_6b

    .line 62
    :cond_68
    :goto_68
    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 70
    :goto_6b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 71
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_7c

    .line 72
    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 75
    :cond_7c
    return-object v0

    .line 44
    .end local v1  # "userWantsBadges":Z
    .end local v2  # "uid":I
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "origPkg":Ljava/lang/String;
    .end local v5  # "origUid":I
    .end local v6  # "appCanShowBadge":Z
    :cond_7d
    :goto_7d
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"  # Lcom/android/server/notification/RankingConfig;

    .line 80
    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 81
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"  # Lcom/android/server/notification/ZenModeHelper;

    .line 85
    return-void
.end method
