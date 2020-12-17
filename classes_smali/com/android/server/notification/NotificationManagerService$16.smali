.class Lcom/android/server/notification/NotificationManagerService$16;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->updateNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$id:I

.field final synthetic val$key:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 7
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 9092
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$tag:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$id:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 9096
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 9097
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$tag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$id:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 9098
    .local v1, "index":I
    if-ltz v1, :cond_83

    .line 9099
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 9101
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 9102
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v4, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$key:I

    iput v5, v4, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    .line 9103
    iget-object v4, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v4, v4, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    if-eqz v4, :cond_3a

    .line 9104
    iget-object v4, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v5, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v5, v5, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_37

    goto :goto_38

    :cond_37
    const/4 v6, 0x0

    :goto_38
    iput-boolean v6, v4, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    .line 9107
    :cond_3a
    iget-object v4, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v5, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v5, v5, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    iput-boolean v5, v4, Landroid/service/notification/StatusBarNotification$Filter;->filterByUserBefore:Z

    .line 9108
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNotificationUserFilter pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$key:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9111
    .end local v1  # "index":I
    .end local v2  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v3  # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_83
    monitor-exit v0

    .line 9112
    return-void

    .line 9111
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_5 .. :try_end_87} :catchall_85

    throw v1
.end method
