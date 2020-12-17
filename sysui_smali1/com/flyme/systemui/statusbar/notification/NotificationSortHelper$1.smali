.class Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;
.super Ljava/lang/Object;
.source "NotificationSortHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result p1

    .line 36
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    if-ge p1, p0, :cond_18

    const/4 p0, 0x1

    goto :goto_1d

    :cond_18
    if-ne p1, p0, :cond_1c

    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 p0, -0x1

    :goto_1d
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 32
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;->compare(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p0

    return p0
.end method
