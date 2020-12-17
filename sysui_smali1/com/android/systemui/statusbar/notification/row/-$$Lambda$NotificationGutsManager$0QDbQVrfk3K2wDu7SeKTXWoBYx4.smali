.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$0QDbQVrfk3K2wDu7SeKTXWoBYx4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$0QDbQVrfk3K2wDu7SeKTXWoBYx4;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$0QDbQVrfk3K2wDu7SeKTXWoBYx4;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onFilterButtonClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$0QDbQVrfk3K2wDu7SeKTXWoBYx4;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$0QDbQVrfk3K2wDu7SeKTXWoBYx4;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeNotificationInfo$6$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method
