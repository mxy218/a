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

    .line 871
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 872
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 873
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 876
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    goto :goto_32

    .line 894
    :pswitch_6  #0x6, 0x7
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/power/Notifier;->access$1100(Lcom/android/server/power/Notifier;I)V

    goto :goto_32

    .line 890
    :pswitch_e  #0x5
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/power/Notifier;->access$1000(Lcom/android/server/power/Notifier;I)V

    .line 891
    goto :goto_32

    .line 887
    :pswitch_16  #0x4
    iget-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$900(Lcom/android/server/power/Notifier;)V

    .line 888
    goto :goto_32

    .line 884
    :pswitch_1c  #0x3
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/power/Notifier;->access$800(Lcom/android/server/power/Notifier;II)V

    .line 885
    goto :goto_32

    .line 881
    :pswitch_26  #0x2
    iget-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$600(Lcom/android/server/power/Notifier;)V

    .line 882
    goto :goto_32

    .line 878
    :pswitch_2c  #0x1
    iget-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$700(Lcom/android/server/power/Notifier;)V

    .line 879
    nop

    .line 897
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_26  #00000002
        :pswitch_1c  #00000003
        :pswitch_16  #00000004
        :pswitch_e  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
