.class Lcom/android/server/notification/MzDonotDisturbCompat$1;
.super Landroid/content/BroadcastReceiver;
.source "MzDonotDisturbCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDonotDisturbCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDonotDisturbCompat;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDonotDisturbCompat;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/MzDonotDisturbCompat;

    .line 59
    iput-object p1, p0, Lcom/android/server/notification/MzDonotDisturbCompat$1;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 63
    const-string v0, "MzDonotDisturbCompat"

    if-eqz p2, :cond_87

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto/16 :goto_87

    .line 67
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v2, "meizu.intent.action.DO_NOT_DISTURB_START"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 69
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat$1;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$000(Lcom/android/server/notification/MzDonotDisturbCompat;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_86

    .line 70
    :cond_28
    const-string/jumbo v2, "meizu.intent.action.DO_NOT_DISTURB_END"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 71
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat$1;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$000(Lcom/android/server/notification/MzDonotDisturbCompat;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_86

    .line 72
    :cond_40
    const-string/jumbo v2, "meizu.intent.action.DO_NOT_DISTURB_UPDATE_RULE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 73
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat$1;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$000(Lcom/android/server/notification/MzDonotDisturbCompat;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_86

    .line 74
    :cond_58
    invoke-static {}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 75
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat$1;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$000(Lcom/android/server/notification/MzDonotDisturbCompat;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_86

    .line 77
    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive not handle action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_86
    return-void

    .line 64
    .end local v1  # "action":Ljava/lang/String;
    :cond_87
    :goto_87
    const-string/jumbo v1, "onReceive null,return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
