.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;
.super Landroid/os/Handler;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V
    .registers 3

    .line 1121
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1126
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_41

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_35

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2f

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationSQLiteLog"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1137
    :cond_2f
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-static {p1, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1138
    goto :goto_4d

    .line 1134
    :cond_35
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-static {p1, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1135
    goto :goto_4d

    .line 1131
    :cond_3b
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-static {p1, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1132
    goto :goto_4d

    .line 1128
    :cond_41
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1129
    nop

    .line 1143
    :goto_4d
    return-void
.end method
