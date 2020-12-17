.class Lcom/android/server/ConnectivityService$7;
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
    .param p1, "this$0"  # Lcom/android/server/ConnectivityService;

    .line 5068
    iput-object p1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 5071
    iget-object v0, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)V

    .line 5072
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5073
    .local v0, "action":Ljava/lang/String;
    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 5074
    .local v2, "userId":I
    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 5075
    .local v3, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 5077
    .local v4, "packageData":Landroid/net/Uri;
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    .line 5078
    .local v5, "packageName":Ljava/lang/String;
    :goto_24
    if-ne v2, v1, :cond_27

    return-void

    .line 5080
    :cond_27
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 5081
    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5082
    :cond_35
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 5083
    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5084
    :cond_43
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 5085
    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5086
    :cond_51
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 5087
    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5088
    :cond_5f
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 5089
    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 5090
    :cond_6d
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 5091
    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v5, v3}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_9d

    .line 5092
    :cond_7b
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 5093
    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v5, v3}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_9d

    .line 5094
    :cond_89
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 5095
    const/4 v1, 0x0

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 5097
    .local v1, "isReplacing":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v5, v3, v1}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;Ljava/lang/String;IZ)V

    .line 5099
    .end local v1  # "isReplacing":Z
    :cond_9d
    :goto_9d
    return-void
.end method
