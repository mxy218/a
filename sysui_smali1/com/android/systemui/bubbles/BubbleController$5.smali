.class Lcom/android/systemui/bubbles/BubbleController$5;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleData$Listener;


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

    .line 675
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyUpdate(Lcom/android/systemui/bubbles/BubbleData$Update;)V
    .registers 8

    .line 679
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_11

    .line 681
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1000(Lcom/android/systemui/bubbles/BubbleController;)V

    .line 685
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    .line 689
    :cond_1a
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_29

    .line 690
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->addBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 694
    :cond_29
    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    if-nez v0, :cond_3b

    .line 695
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpanded(Z)V

    .line 699
    :cond_3b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 701
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 702
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 703
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 704
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/bubbles/BubbleStackView;->removeBubble(Lcom/android/systemui/bubbles/Bubble;)V

    const/16 v4, 0x8

    if-eq v2, v4, :cond_46

    .line 708
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 709
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->showInShadeWhenBubble()Z

    move-result v2

    if-nez v2, :cond_91

    .line 711
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v2

    .line 712
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 711
    invoke-virtual {v2, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    goto :goto_ae

    .line 715
    :cond_91
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 720
    :try_start_a1
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleController;->access$1100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;Z)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_ae} :catch_ae

    .line 729
    :catch_ae
    :goto_ae
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 730
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 731
    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/bubbles/BubbleData;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_100

    .line 733
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 734
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v5}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/bubbles/BubbleData;->removeSuppressedSummary(Ljava/lang/String;)V

    .line 735
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 736
    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    .line 737
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v4

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 742
    :cond_100
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleController;->access$1200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    .line 743
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 742
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 745
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 746
    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$1200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object v4

    .line 747
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    if-eqz v4, :cond_134

    .line 749
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 750
    :cond_134
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v3

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    goto/16 :goto_46

    .line 757
    :cond_141
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_150

    .line 758
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 761
    :cond_150
    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    if-eqz v0, :cond_15f

    .line 762
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleOrder(Ljava/util/List;)V

    .line 765
    :cond_15f
    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->selectionChanged:Z

    if-eqz v0, :cond_181

    .line 766
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 767
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_181

    .line 768
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 769
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    .line 768
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 774
    :cond_181
    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    if-eqz v0, :cond_193

    iget-boolean p1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    if-eqz p1, :cond_193

    .line 775
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpanded(Z)V

    .line 778
    :cond_193
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 779
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateStack()V

    return-void
.end method
