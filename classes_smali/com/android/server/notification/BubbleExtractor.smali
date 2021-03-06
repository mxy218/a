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
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "usageStats"  # Lcom/android/server/notification/NotificationUsageStats;

    .line 32
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 7
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 35
    const/4 v0, 0x0

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_50

    .line 40
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_f

    .line 42
    return-object v0

    .line 44
    :cond_f
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/notification/RankingConfig;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    .line 45
    .local v1, "userWantsBubbles":Z
    iget-object v2, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 46
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/notification/RankingConfig;->areBubblesAllowed(Ljava/lang/String;I)Z

    move-result v2

    .line 47
    .local v2, "appCanShowBubble":Z
    const/4 v3, 0x0

    if-eqz v1, :cond_4c

    if-nez v2, :cond_31

    goto :goto_4c

    .line 50
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 51
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v4

    if-eqz v4, :cond_44

    if-eqz v2, :cond_44

    const/4 v3, 0x1

    :cond_44
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_4f

    .line 53
    :cond_48
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_4f

    .line 48
    :cond_4c
    :goto_4c
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    .line 57
    :goto_4f
    return-object v0

    .line 37
    .end local v1  # "userWantsBubbles":Z
    .end local v2  # "appCanShowBubble":Z
    :cond_50
    :goto_50
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"  # Lcom/android/server/notification/RankingConfig;

    .line 62
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 63
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"  # Lcom/android/server/notification/ZenModeHelper;

    .line 67
    return-void
.end method
