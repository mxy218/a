.class Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;
.super Landroid/database/ContentObserver;
.source "FlymeNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/os/Handler;)V
    .registers 3

    .line 127
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    .line 130
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_notification_filter_value"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: 广播，value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeNotificationAppList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_29

    return-void

    :cond_29
    const-string v0, ","

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 137
    aget-object v0, p1, v0

    const/4 v2, 0x1

    .line 138
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 139
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_58

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: 广播，from="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_58
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_cc

    if-eqz v3, :cond_cc

    .line 146
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_cc

    .line 147
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7a
    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange: try to find app,pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange: find right app,pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v4}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    iput p1, v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->userFilter:I

    .line 152
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$200(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_7a

    :cond_cc
    return-void
.end method
