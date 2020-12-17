.class Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$1;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$1;->this$0:Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 56
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onServiceConnected: onServiceConnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p2}, Lmeizu/notification/INotificationFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/notification/INotificationFilterService;

    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$202(Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;

    .line 59
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bind success! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$200()Lmeizu/notification/INotificationFilterService;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 49
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected: onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 50
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$202(Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;

    .line 51
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$1;->this$0:Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$300(Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;)V

    return-void
.end method
