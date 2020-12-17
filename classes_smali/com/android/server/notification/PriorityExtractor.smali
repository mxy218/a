.class public Lcom/android/server/notification/PriorityExtractor;
.super Ljava/lang/Object;
.source "PriorityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PriorityExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "usageStats"  # Lcom/android/server/notification/NotificationUsageStats;

    .line 33
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 4
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 36
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_29

    .line 41
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/PriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_f

    .line 43
    return-object v0

    .line 46
    :cond_f
    nop

    .line 48
    nop

    .line 46
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-nez v1, :cond_24

    .line 48
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isMaxPriority()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_24

    .line 50
    :cond_22
    const/4 v1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v1, 0x2

    .line 46
    :goto_25
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setPackagePriority(I)V

    .line 52
    return-object v0

    .line 38
    :cond_29
    :goto_29
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"  # Lcom/android/server/notification/RankingConfig;

    .line 57
    iput-object p1, p0, Lcom/android/server/notification/PriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 58
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"  # Lcom/android/server/notification/ZenModeHelper;

    .line 63
    return-void
.end method
