.class public Lcom/android/server/notification/CriticalNotificationExtractor;
.super Ljava/lang/Object;
.source "CriticalNotificationExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field static final CRITICAL:I = 0x0

.field static final CRITICAL_LOW:I = 0x1

.field private static final DBG:Z = false

.field static final NORMAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CriticalNotificationExt"


# instance fields
.field private mSupportsCriticalNotifications:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    return-void
.end method

.method private supportsCriticalNotifications(Landroid/content/Context;)Z
    .registers 4

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.automotive"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/notification/CriticalNotificationExtractor;->supportsCriticalNotifications(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    .line 57
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 4

    .line 65
    iget-boolean v0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 67
    return-object v1

    .line 69
    :cond_6
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_2e

    .line 75
    :cond_f
    const-string v0, "car_emergency"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    goto :goto_2d

    .line 77
    :cond_1c
    const-string v0, "car_warning"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    goto :goto_2d

    .line 80
    :cond_29
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    .line 82
    :goto_2d
    return-object v1

    .line 71
    :cond_2e
    :goto_2e
    return-object v1
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 87
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 91
    return-void
.end method
