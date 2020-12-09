.class public Lcom/android/server/notification/ZenModeExtractor;
.super Ljava/lang/Object;
.source "ZenModeExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeExtractor"


# instance fields
.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-string v0, "ZenModeExtractor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 33
    sget-boolean p1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    if-eqz p1, :cond_27

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Initializing  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZenModeExtractor"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_27
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 5

    .line 37
    const-string v0, "ZenModeExtractor"

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_39

    .line 42
    :cond_c
    iget-object v2, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-nez v2, :cond_1b

    .line 43
    sget-boolean p1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    if-eqz p1, :cond_1a

    const-string/jumbo p1, "skipping - no zen info available"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1a
    return-object v1

    .line 47
    :cond_1b
    invoke-virtual {v2, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 48
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 49
    iget-object v0, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 50
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 49
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_38

    .line 52
    :cond_34
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 55
    :goto_38
    return-object v1

    .line 38
    :cond_39
    :goto_39
    sget-boolean p1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    if-eqz p1, :cond_43

    const-string/jumbo p1, "skipping empty notification"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_43
    return-object v1
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 61
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 66
    return-void
.end method
