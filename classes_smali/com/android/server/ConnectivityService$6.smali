.class Lcom/android/server/ConnectivityService$6;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .line 5082
    iput-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 5085
    iget-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)V

    .line 5086
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 5087
    const/16 v0, -0x2710

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5088
    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 5089
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 5091
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    .line 5092
    :goto_24
    if-ne v1, v0, :cond_27

    return-void

    .line 5094
    :cond_27
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5095
    iget-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v1}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5096
    :cond_35
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5097
    iget-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v1}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5098
    :cond_43
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 5099
    iget-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v1}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5100
    :cond_51
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 5101
    iget-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v1}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5102
    :cond_5f
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 5103
    iget-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v1}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5104
    :cond_6d
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 5105
    iget-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v3, v2}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_9d

    .line 5106
    :cond_7b
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 5107
    iget-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v3, v2}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_9d

    .line 5108
    :cond_89
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 5109
    const/4 p1, 0x0

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 5111
    iget-object p2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p2, v3, v2, p1}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;Ljava/lang/String;IZ)V

    .line 5113
    :cond_9d
    :goto_9d
    return-void
.end method
