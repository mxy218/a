.class Lcom/android/systemui/bubbles/BubbleController$3;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;


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

    .line 537
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationRemoveRequested(Ljava/lang/String;I)Z
    .registers 11

    .line 540
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 541
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 542
    :goto_18
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleData;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 544
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v3

    .line 545
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 546
    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    move v1, v5

    goto :goto_4d

    :cond_4c
    move v1, v6

    :goto_4d
    if-eqz v0, :cond_5d

    .line 547
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 548
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_5d

    move v4, v5

    goto :goto_5e

    :cond_5d
    move v4, v6

    :goto_5e
    if-nez v1, :cond_62

    if-eqz v4, :cond_6c

    :cond_62
    if-eqz v2, :cond_6c

    .line 550
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c

    move v1, v5

    goto :goto_6d

    :cond_6c
    move v1, v6

    :goto_6d
    if-nez v3, :cond_72

    if-nez v1, :cond_72

    return v6

    :cond_72
    const/4 v2, 0x3

    if-ne p2, v2, :cond_77

    move v2, v5

    goto :goto_78

    :cond_77
    move v2, v6

    :goto_78
    const/4 v3, 0x2

    if-eq p2, v3, :cond_80

    if-ne p2, v5, :cond_7e

    goto :goto_80

    :cond_7e
    move v3, v6

    goto :goto_81

    :cond_80
    :goto_80
    move v3, v5

    :goto_81
    const/16 v4, 0x8

    if-eq p2, v4, :cond_8c

    const/16 v4, 0x9

    if-ne p2, v4, :cond_8a

    goto :goto_8c

    :cond_8a
    move v4, v6

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v4, v5

    :goto_8d
    const/16 v7, 0xc

    if-ne p2, v7, :cond_93

    move p2, v5

    goto :goto_94

    :cond_93
    move p2, v6

    :goto_94
    if-eqz v0, :cond_9e

    .line 564
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v7

    if-eqz v7, :cond_9e

    if-eqz v4, :cond_a7

    :cond_9e
    if-nez v2, :cond_a7

    if-nez v3, :cond_a7

    if-eqz p2, :cond_a5

    goto :goto_a7

    :cond_a5
    move p2, v6

    goto :goto_a8

    :cond_a7
    :goto_a7
    move p2, v5

    :goto_a8
    if-eqz v1, :cond_b1

    .line 568
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0, v0, p2}, Lcom/android/systemui/bubbles/BubbleController;->access$600(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result p0

    return p0

    .line 573
    :cond_b1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz v0, :cond_c7

    .line 574
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v1

    if-eqz v1, :cond_c7

    if-eqz p2, :cond_c7

    move v1, v5

    goto :goto_c8

    :cond_c7
    move v1, v6

    :goto_c8
    if-eqz v1, :cond_ed

    .line 576
    invoke-virtual {p1, v6}, Lcom/android/systemui/bubbles/Bubble;->setShowInShadeWhenBubble(Z)V

    .line 577
    invoke-virtual {p1, v6}, Lcom/android/systemui/bubbles/Bubble;->setShowBubbleDot(Z)V

    .line 578
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    if-eqz p1, :cond_e3

    .line 579
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->updateDotVisibility(Ljava/lang/String;)V

    .line 581
    :cond_e3
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return v5

    :cond_ed
    if-nez p2, :cond_fb

    if-eqz v0, :cond_fb

    .line 585
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    :cond_fb
    return v6
.end method
