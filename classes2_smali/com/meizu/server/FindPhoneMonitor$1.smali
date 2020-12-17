.class Lcom/meizu/server/FindPhoneMonitor$1;
.super Landroid/os/Handler;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FindPhoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 67
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_2a

    .line 87
    :pswitch_6  #0x6
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;->access$500(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V

    goto :goto_2a

    .line 84
    :pswitch_c  #0x5
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->access$400(Lcom/meizu/server/FindPhoneMonitor;)V

    .line 85
    goto :goto_2a

    .line 81
    :pswitch_12  #0x4
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;->access$300(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V

    .line 82
    goto :goto_2a

    .line 78
    :pswitch_18  #0x3
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;->access$200(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V

    .line 79
    goto :goto_2a

    .line 75
    :pswitch_1e  #0x2
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;->access$100(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V

    .line 76
    goto :goto_2a

    .line 72
    :pswitch_24  #0x1
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$1;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->access$000(Lcom/meizu/server/FindPhoneMonitor;)V

    .line 73
    nop

    .line 90
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_1e  #00000002
        :pswitch_18  #00000003
        :pswitch_12  #00000004
        :pswitch_c  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
