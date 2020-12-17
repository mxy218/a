.class Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationFilterHelper.java"


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

    .line 66
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$2;->this$0:Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 69
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end welcome "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$200()Lmeizu/notification/INotificationFilterService;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive: end welcome"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$200()Lmeizu/notification/INotificationFilterService;

    move-result-object p1

    if-nez p1, :cond_30

    .line 72
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$2;->this$0:Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$300(Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;)V

    :cond_30
    return-void
.end method
