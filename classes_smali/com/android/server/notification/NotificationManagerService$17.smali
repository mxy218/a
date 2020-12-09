.class Lcom/android/server/notification/NotificationManagerService$17;
.super Landroid/telephony/PhoneStateListener;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 7571
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4

    .line 7574
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->access$9200(Lcom/android/server/notification/NotificationManagerService;)I

    move-result p2

    if-ne p2, p1, :cond_9

    return-void

    .line 7575
    :cond_9
    sget-boolean p2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p2, :cond_27

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call state changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$9300(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotificationService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7576
    :cond_27
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2, p1}, Lcom/android/server/notification/NotificationManagerService;->access$9202(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 7577
    return-void
.end method
