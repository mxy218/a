.class public interface abstract Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
.super Ljava/lang/Object;
.source "NotificationGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGroupChangeListener"
.end annotation


# virtual methods
.method public onGroupCreated(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .registers 2

    return-void
.end method

.method public onGroupExpansionChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .registers 3

    return-void
.end method

.method public onGroupRemoved(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onGroupSuppressionChanged(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V
    .registers 3

    return-void
.end method

.method public onGroupsChanged()V
    .registers 1

    return-void
.end method
