.class Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$H;
.super Landroid/os/Handler;
.source "NotificationFilterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$1;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$H;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 105
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    goto :goto_47

    .line 108
    :cond_6
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: INotificationFilterServiceNull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$200()Lmeizu/notification/INotificationFilterService;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$200()Lmeizu/notification/INotificationFilterService;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 112
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 115
    :try_start_34
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$200()Lmeizu/notification/INotificationFilterService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmeizu/notification/INotificationFilterService;->updateUserFilter(Ljava/lang/String;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_47

    :catch_3c
    move-exception p0

    .line 117
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "updateUserFilter err"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    :goto_47
    return-void
.end method
