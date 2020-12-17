.class public Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
.super Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
.source "HeadsUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeadsUpEntry"
.end annotation


# instance fields
.field protected expanded:Z

.field public remoteInputActive:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;-><init>(Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method


# virtual methods
.method protected calculateFinishTime()J
    .registers 5

    .line 429
    iget-wide v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->access$000(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->getRecommendedHeadsUpTimeoutMs(I)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected calculatePostTime()J
    .registers 5

    .line 424
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->calculatePostTime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I
    .registers 7

    .line 385
    check-cast p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result v0

    .line 387
    iget-object v1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v0, :cond_14

    if-nez v1, :cond_14

    return v2

    :cond_14
    const/4 v3, 0x1

    if-nez v0, :cond_1a

    if-eqz v1, :cond_1a

    return v3

    .line 393
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v4, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v0, :cond_2f

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    if-nez v0, :cond_34

    if-eqz v1, :cond_34

    return v3

    .line 401
    :cond_34
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v0, :cond_3d

    return v2

    .line 403
    :cond_3d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v0, :cond_46

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz v0, :cond_46

    return v3

    .line 407
    :cond_46
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 373
    check-cast p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    move-result p0

    return p0
.end method

.method protected getRecommendedHeadsUpTimeoutMs(I)I
    .registers 3

    .line 438
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->access$100(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method protected isSticky()Z
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-nez v0, :cond_1d

    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 380
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public reset()V
    .registers 2

    .line 416
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->reset()V

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    .line 418
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    return-void
.end method

.method public setExpanded(Z)V
    .registers 2

    .line 411
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    return-void
.end method
