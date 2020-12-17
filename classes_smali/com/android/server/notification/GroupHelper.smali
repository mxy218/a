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
    .param p1, "autoGroupAtCount"  # I
    .param p2, "callback"  # Lcom/android/server/notification/GroupHelper$Callback;

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
    .registers 6
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "triggeringKey"  # Ljava/lang/String;
    .param p4, "summaryNeeded"  # Z

    .line 142
    if-eqz p4, :cond_8

    .line 143
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;)V

    .line 147
    :goto_d
    return-void
.end method

.method private adjustNotificationBundling(Ljava/util/List;Z)V
    .registers 7
    .param p2, "group"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 150
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "key":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending grouping adjustment for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " group? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GroupHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_32
    if-eqz p2, :cond_3a

    .line 153
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v2, v1}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;)V

    goto :goto_3f

    .line 155
    :cond_3a
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v2, v1}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroup(Ljava/lang/String;)V

    .line 157
    .end local v1  # "key":Ljava/lang/String;
    :goto_3f
    goto :goto_4

    .line 158
    :cond_40
    return-void
.end method

.method private maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    .registers 10
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "notificationGone"  # Z
    .param p3, "userId"  # I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "notificationsToUnAutogroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "removeSummary":Z
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    monitor-enter v2

    .line 109
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 110
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 111
    .local v3, "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_6f

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_22

    goto :goto_6f

    .line 114
    :cond_22
    nop

    .line 115
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashSet;

    .line 116
    .local v4, "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_6d

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-nez v5, :cond_36

    goto :goto_6d

    .line 119
    :cond_36
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 120
    if-nez p2, :cond_49

    .line 122
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_49
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-nez v5, :cond_57

    .line 128
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v1, 0x1

    .line 131
    .end local v3  # "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    .end local v4  # "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_9 .. :try_end_58} :catchall_71

    .line 132
    const/4 v2, 0x0

    if-eqz v1, :cond_63

    .line 133
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p3, v3, v4, v2}, Lcom/android/server/notification/GroupHelper;->adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 135
    :cond_63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6c

    .line 136
    invoke-direct {p0, v0, v2}, Lcom/android/server/notification/GroupHelper;->adjustNotificationBundling(Ljava/util/List;Z)V

    .line 138
    :cond_6c
    return-void

    .line 117
    .restart local v3  # "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    .restart local v4  # "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_6d
    :goto_6d
    :try_start_6d
    monitor-exit v2

    return-void

    .line 112
    .end local v4  # "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_6f
    :goto_6f
    monitor-exit v2

    return-void

    .line 131
    .end local v3  # "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    :catchall_71
    move-exception v3

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_71

    throw v3
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 10
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "autogroupSummaryExists"  # Z

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
    .local v0, "notificationsToGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_bb

    .line 56
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    monitor-enter v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_c3

    .line 58
    :try_start_2d
    const-string v3, "android"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b6

    iget-object v3, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v3, v3, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez v3, :cond_b6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_b6

    .line 61
    :cond_46
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 62
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 63
    .local v3, "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    if-nez v3, :cond_5e

    .line 64
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 66
    :cond_5e
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    nop

    .line 68
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashSet;

    .line 69
    .local v4, "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-nez v4, :cond_7e

    .line 70
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v5

    .line 73
    :cond_7e
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v5, v6, :cond_96

    if-eqz p2, :cond_99

    .line 77
    :cond_96
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    .end local v3  # "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    .end local v4  # "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_2d .. :try_end_9a} :catchall_b8

    .line 80
    :try_start_9a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c2

    .line 81
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/server/notification/GroupHelper;->adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 83
    invoke-direct {p0, v0, v4}, Lcom/android/server/notification/GroupHelper;->adjustNotificationBundling(Ljava/util/List;Z)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b5} :catch_c3

    goto :goto_c2

    .line 58
    :cond_b6
    :goto_b6
    :try_start_b6
    monitor-exit v1

    return-void

    .line 79
    :catchall_b8
    move-exception v2

    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_b8

    .end local p0  # "this":Lcom/android/server/notification/GroupHelper;
    .end local p1  # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local p2  # "autogroupSummaryExists":Z
    :try_start_ba
    throw v2

    .line 87
    .restart local p0  # "this":Lcom/android/server/notification/GroupHelper;
    .restart local p1  # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local p2  # "autogroupSummaryExists":Z
    :cond_bb
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c2} :catch_c3

    .line 91
    .end local v0  # "notificationsToGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c2
    :goto_c2
    goto :goto_cb

    .line 89
    :catch_c3
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GroupHelper"

    const-string v2, "Failure processing new notification"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_cb
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 5
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;

    .line 96
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 99
    goto :goto_11

    .line 97
    :catch_9
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GroupHelper"

    const-string v2, "Error processing canceled notification"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method
