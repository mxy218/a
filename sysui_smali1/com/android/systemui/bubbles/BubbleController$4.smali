.class Lcom/android/systemui/bubbles/BubbleController$4;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2

    .line 670
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->notificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$700(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$800(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 645
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$900(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 646
    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$700(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 647
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2a
    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 5

    .line 653
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$700(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$800(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 656
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$900(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 657
    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$700(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_41

    .line 658
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 660
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    goto :goto_53

    :cond_41
    if-eqz v0, :cond_53

    .line 662
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    .line 663
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_53
    :goto_53
    return-void
.end method
