.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onSettingsButtonClick(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeNotificationInfo$7$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
