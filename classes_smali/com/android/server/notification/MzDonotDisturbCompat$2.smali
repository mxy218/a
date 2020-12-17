.class Lcom/android/server/notification/MzDonotDisturbCompat$2;
.super Landroid/os/Handler;
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

    .line 82
    iput-object p1, p0, Lcom/android/server/notification/MzDonotDisturbCompat$2;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 84
    invoke-static {}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$200()Z

    move-result v0

    const-string v1, "MzDonotDisturbCompat"

    if-eqz v0, :cond_1e

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_45

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_31

    .line 103
    const-string v0, "can not handle request"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 99
    :cond_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 100
    .local v0, "clearIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/notification/MzDonotDisturbCompat$2;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v2, v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$600(Lcom/android/server/notification/MzDonotDisturbCompat;Landroid/content/Intent;)V

    .line 101
    goto :goto_51

    .line 95
    .end local v0  # "clearIntent":Landroid/content/Intent;
    :cond_3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 96
    .local v0, "automaticIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/notification/MzDonotDisturbCompat$2;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v2, v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$500(Lcom/android/server/notification/MzDonotDisturbCompat;Landroid/content/Intent;)V

    .line 97
    goto :goto_51

    .line 92
    .end local v0  # "automaticIntent":Landroid/content/Intent;
    :cond_45
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat$2;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$400(Lcom/android/server/notification/MzDonotDisturbCompat;)V

    .line 93
    goto :goto_51

    .line 89
    :cond_4b
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat$2;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$300(Lcom/android/server/notification/MzDonotDisturbCompat;)V

    .line 90
    nop

    .line 106
    :goto_51
    invoke-static {}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$200()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 107
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat$2;->this$0:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-static {v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->access$700(Lcom/android/server/notification/MzDonotDisturbCompat;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 108
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newConfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0  # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_76
    return-void
.end method
