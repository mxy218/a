.class public Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;
.super Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;
.source "NotificationRemoteInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemoteInputHistoryExtender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .registers 2

    .line 656
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    return-void
.end method


# virtual methods
.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 5

    if-eqz p2, :cond_53

    .line 666
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 667
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 668
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 670
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    .line 672
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->onRemoteInputInserted()V

    if-nez p2, :cond_19

    return-void

    .line 678
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 682
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRemoved()Z

    move-result p2

    if-eqz p2, :cond_2a

    return-void

    :cond_2a
    const/4 p2, 0x3

    const-string v0, "NotifRemoteInputManager"

    .line 686
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 687
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keeping notification around after sending remote input "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_49
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 693
    :cond_53
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_5c
    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method
