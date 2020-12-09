.class public Lcom/android/server/notification/GroupHelper;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/GroupHelper$Callback;
    }
.end annotation


# static fields
.field protected static final AUTOGROUP_KEY:Ljava/lang/String; = "ranker_group"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GroupHelper"


# instance fields
.field private final mAutoGroupAtCount:I

.field private final mCallback:Lcom/android/server/notification/GroupHelper$Callback;

.field mUngroupedNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const-string v0, "GroupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/server/notification/GroupHelper$Callback;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 45
    iput p1, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 46
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 47
    return-void
.end method

.method private adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 139
    if-eqz p4, :cond_8

    .line 140
    iget-object p4, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {p4, p1, p2, p3}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 142
    :cond_8
    iget-object p3, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {p3, p1, p2}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;)V

    .line 144
    :goto_d
    return-void
.end method

.method private adjustNotificationBundling(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    sget-boolean v1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending grouping adjustment for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " group? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GroupHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_32
    if-eqz p2, :cond_3a

    .line 150
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;)V

    goto :goto_3f

    .line 152
    :cond_3a
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroup(Ljava/lang/String;)V

    .line 154
    :goto_3f
    goto :goto_4

    .line 155
    :cond_40
    return-void
.end method

.method private maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    .registers 9

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    nop

    .line 105
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    monitor-enter v1

    .line 106
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 107
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 108
    if-eqz v2, :cond_71

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_71

    .line 111
    :cond_22
    nop

    .line 112
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashSet;

    .line 113
    if-eqz v3, :cond_6f

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    if-nez v4, :cond_36

    goto :goto_6f

    .line 116
    :cond_36
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 117
    if-nez p2, :cond_49

    .line 119
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_49
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_59

    .line 125
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 p2, 0x1

    goto :goto_5a

    .line 124
    :cond_59
    move p2, v3

    .line 128
    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_9 .. :try_end_5b} :catchall_73

    .line 129
    if-eqz p2, :cond_65

    .line 130
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p3, p1, p2, v3}, Lcom/android/server/notification/GroupHelper;->adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 132
    :cond_65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6e

    .line 133
    invoke-direct {p0, v0, v3}, Lcom/android/server/notification/GroupHelper;->adjustNotificationBundling(Ljava/util/List;Z)V

    .line 135
    :cond_6e
    return-void

    .line 114
    :cond_6f
    :goto_6f
    :try_start_6f
    monitor-exit v1

    return-void

    .line 109
    :cond_71
    :goto_71
    monitor-exit v1

    return-void

    .line 128
    :catchall_73
    move-exception p1

    monitor-exit v1
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_73

    throw p1
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 9

    .line 50
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POSTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9e

    .line 56
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    monitor-enter v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_a6

    .line 57
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 58
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 59
    if-nez v3, :cond_44

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 62
    :cond_44
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    nop

    .line 64
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashSet;

    .line 65
    if-nez v4, :cond_63

    .line 66
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 69
    :cond_63
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    iget v5, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v3, v5, :cond_7b

    if-eqz p2, :cond_7e

    .line 74
    :cond_7b
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    :cond_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_2d .. :try_end_7f} :catchall_9b

    .line 77
    :try_start_7f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a5

    .line 78
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    const/4 v2, 0x1

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/android/server/notification/GroupHelper;->adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 80
    invoke-direct {p0, v0, v2}, Lcom/android/server/notification/GroupHelper;->adjustNotificationBundling(Ljava/util/List;Z)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9a} :catch_a6

    goto :goto_a5

    .line 76
    :catchall_9b
    move-exception p1

    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw p1

    .line 84
    :cond_9e
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a5} :catch_a6

    .line 88
    :cond_a5
    :goto_a5
    goto :goto_ae

    .line 86
    :catch_a6
    move-exception p1

    .line 87
    const-string p2, "GroupHelper"

    const-string v0, "Failure processing new notification"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_ae
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 93
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 96
    goto :goto_11

    .line 94
    :catch_9
    move-exception p1

    .line 95
    const-string v0, "GroupHelper"

    const-string v1, "Error processing canceled notification"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_11
    return-void
.end method
