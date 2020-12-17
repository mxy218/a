.class Lcom/android/server/notification/MzDoNotDisturbHelper$1;
.super Landroid/os/Handler;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDoNotDisturbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 137
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 140
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4b

    if-eq v0, v2, :cond_38

    if-eq v0, v1, :cond_34

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    goto :goto_78

    .line 157
    :cond_13
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$500(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$500(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    goto :goto_78

    .line 154
    :cond_34
    invoke-static {v4}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$202(Z)Z

    .line 155
    goto :goto_78

    .line 150
    :cond_38
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$000(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$100(Lcom/android/server/notification/MzDoNotDisturbHelper;Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0, v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$302(Lcom/android/server/notification/MzDoNotDisturbHelper;Z)Z

    .line 152
    goto :goto_78

    .line 143
    :cond_4b
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$000(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$100(Lcom/android/server/notification/MzDoNotDisturbHelper;Ljava/lang/String;Z)V

    .line 144
    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$202(Z)Z

    .line 145
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0, v4}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$302(Lcom/android/server/notification/MzDoNotDisturbHelper;Z)Z

    .line 146
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    nop

    .line 163
    :goto_78
    return-void
.end method
