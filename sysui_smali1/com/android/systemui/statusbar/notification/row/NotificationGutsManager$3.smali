.class Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;
.super Landroid/database/ContentObserver;
.source "NotificationGutsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/os/Handler;)V
    .registers 3

    .line 752
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    .line 755
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->access$500(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_notification_filter_value"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: receiveBroadcast, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationGutsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_29

    return-void

    :cond_29
    const-string v0, ","

    .line 761
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 762
    aget-object v2, p1, v0

    const/4 v3, 0x1

    .line 763
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 764
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne v4, v3, :cond_43

    move v0, v3

    :cond_43
    if-eqz v4, :cond_57

    if-nez p1, :cond_48

    goto :goto_57

    .line 774
    :cond_48
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p1, v2, v4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->access$600(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Ljava/lang/String;IZ)V

    .line 776
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void

    .line 769
    :cond_57
    :goto_57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: receiveBroadcast, from="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",filterValue="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
