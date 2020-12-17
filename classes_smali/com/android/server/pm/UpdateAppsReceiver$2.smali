.class Lcom/android/server/pm/UpdateAppsReceiver$2;
.super Landroid/os/Handler;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UpdateAppsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdateAppsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 202
    iput-object p1, p0, Lcom/android/server/pm/UpdateAppsReceiver$2;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_2b

    .line 215
    :pswitch_6  #0x68
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$2;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1200(Lcom/android/server/pm/UpdateAppsReceiver;I)V

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$2;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1000(Lcom/android/server/pm/UpdateAppsReceiver;)V

    goto :goto_2b

    .line 212
    :pswitch_19  #0x67
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$2;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1100(Lcom/android/server/pm/UpdateAppsReceiver;)V

    .line 213
    goto :goto_2b

    .line 209
    :pswitch_1f  #0x66
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$2;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1000(Lcom/android/server/pm/UpdateAppsReceiver;)V

    .line 210
    goto :goto_2b

    .line 206
    :pswitch_25  #0x65
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$2;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->access$900(Lcom/android/server/pm/UpdateAppsReceiver;)V

    .line 207
    nop

    .line 219
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x65
        :pswitch_25  #00000065
        :pswitch_1f  #00000066
        :pswitch_19  #00000067
        :pswitch_6  #00000068
    .end packed-switch
.end method
