.class public Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
.super Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
.source "HeadsUpManagerPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeadsUpEntryPhone"
.end annotation


# instance fields
.field private extended:Z

.field private mIsAutoHeadsUp:Z

.field private mMenuShownPinned:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)Z
    .registers 1

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->isAutoHeadsUp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)V
    .registers 1

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extendPulse()V

    return-void
.end method

.method private extendPulse()V
    .registers 2

    .line 589
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    :cond_b
    return-void
.end method

.method private getDecayDuration()I
    .registers 2

    .line 614
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->isAutoHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->getRecommendedHeadsUpTimeoutMs(I)I

    move-result p0

    return p0

    .line 617
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$700(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->getRecommendedHeadsUpTimeoutMs(I)I

    move-result p0

    return p0
.end method

.method private isAutoHeadsUp()Z
    .registers 1

    .line 622
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mIsAutoHeadsUp:Z

    return p0
.end method


# virtual methods
.method protected calculateFinishTime()J
    .registers 5

    .line 610
    iget-wide v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->getDecayDuration()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    if-eqz v2, :cond_11

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mExtensionTime:I

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I
    .registers 4

    .line 597
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 598
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->isAutoHeadsUp()Z

    move-result v1

    .line 599
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->isAutoHeadsUp()Z

    move-result v0

    if-eqz v1, :cond_11

    if-nez v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    const/4 p0, -0x1

    return p0

    .line 605
    :cond_17
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 498
    check-cast p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    move-result p0

    return p0
.end method

.method protected isSticky()Z
    .registers 2

    .line 515
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->isSticky()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mMenuShownPinned:Z

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public synthetic lambda$setEntry$0$HeadsUpManagerPhone$HeadsUpEntryPhone(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$800(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-nez v0, :cond_27

    .line 523
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showingPulsing()Z

    move-result v0

    if-nez v0, :cond_27

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroidx/collection/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$800(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    goto :goto_59

    .line 527
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$900(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 528
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 529
    :cond_39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mIsAutoHeadsUp:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$1000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_52

    .line 530
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 532
    :cond_52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$1100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Ljava/lang/String;)V

    :goto_59
    return-void
.end method

.method public reset()V
    .registers 2

    .line 582
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->reset()V

    const/4 v0, 0x0

    .line 583
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mMenuShownPinned:Z

    .line 584
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    .line 585
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mIsAutoHeadsUp:Z

    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 519
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpManagerPhone$HeadsUpEntryPhone$adyrhF30JE9Yr0JaVKYkiAV0Clw;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpManagerPhone$HeadsUpEntryPhone$adyrhF30JE9Yr0JaVKYkiAV0Clw;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 536
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExpanded(Z)V
    .registers 3

    .line 555
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 559
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-eqz p1, :cond_d

    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    :goto_11
    return-void
.end method

.method public setMenuShownPinned(Z)V
    .registers 3

    .line 568
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mMenuShownPinned:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 572
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mMenuShownPinned:Z

    if-eqz p1, :cond_d

    .line 574
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    :goto_11
    return-void
.end method

.method public updateEntry(Z)V
    .registers 3

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isAutoHeadsUp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mIsAutoHeadsUp:Z

    .line 542
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->updateEntry(Z)V

    .line 544
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 545
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 547
    :cond_24
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroidx/collection/ArraySet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 548
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroidx/collection/ArraySet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 550
    :cond_3d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
