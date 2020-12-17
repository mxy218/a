.class public interface abstract Lcom/android/systemui/statusbar/notification/NotificationEntryListener;
.super Ljava/lang/Object;
.source "NotificationEntryListener.java"


# virtual methods
.method public onBeforeNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    return-void
.end method

.method public onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .registers 3

    return-void
.end method

.method public onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 4

    return-void
.end method

.method public onInflationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2
    .param p1  # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2

    return-void
.end method

.method public onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    return-void
.end method

.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2
    .param p1  # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    return-void
.end method
