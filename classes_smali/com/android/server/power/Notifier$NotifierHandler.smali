.class final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifierHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"  # Landroid/os/Looper;

    .line 929
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 930
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 931
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 934
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    goto :goto_42

    .line 958
    :pswitch_6  #0x8
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->access$1300(Lcom/android/server/power/Notifier;I)V

    goto :goto_42

    .line 955
    :pswitch_e  #0x7
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->access$1200(Lcom/android/server/power/Notifier;I)V

    .line 956
    goto :goto_42

    .line 951
    :pswitch_16  #0x6
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->access$1100(Lcom/android/server/power/Notifier;I)V

    .line 952
    goto :goto_42

    .line 948
    :pswitch_1e  #0x5
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->access$1000(Lcom/android/server/power/Notifier;I)V

    .line 949
    goto :goto_42

    .line 945
    :pswitch_26  #0x4
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$900(Lcom/android/server/power/Notifier;)V

    .line 946
    goto :goto_42

    .line 942
    :pswitch_2c  #0x3
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/power/Notifier;->access$800(Lcom/android/server/power/Notifier;II)V

    .line 943
    goto :goto_42

    .line 939
    :pswitch_36  #0x2
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$600(Lcom/android/server/power/Notifier;)V

    .line 940
    goto :goto_42

    .line 936
    :pswitch_3c  #0x1
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$700(Lcom/android/server/power/Notifier;)V

    .line 937
    nop

    .line 962
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_36  #00000002
        :pswitch_2c  #00000003
        :pswitch_26  #00000004
        :pswitch_1e  #00000005
        :pswitch_16  #00000006
        :pswitch_e  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
