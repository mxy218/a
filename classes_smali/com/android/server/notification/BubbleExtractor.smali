.class public Lcom/android/server/notification/BubbleExtractor;
.super Ljava/lang/Object;
.source "BubbleExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BubbleExtractor"


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
    .registers 6

    .line 35
    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4a

    .line 40
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_f

    .line 42
    return-object v0

    .line 44
    :cond_f
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 45
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/notification/RankingConfig;->areBubblesAllowed(Ljava/lang/String;I)Z

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-interface {v2}, Lcom/android/server/notification/RankingConfig;->bubblesEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_46

    if-nez v1, :cond_2b

    goto :goto_46

    .line 49
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 50
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v2

    if-eqz v2, :cond_3e

    if-eqz v1, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_49

    .line 52
    :cond_42
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_49

    .line 47
    :cond_46
    :goto_46
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    .line 56
    :goto_49
    return-object v0

    .line 37
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 62
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 66
    return-void
.end method
