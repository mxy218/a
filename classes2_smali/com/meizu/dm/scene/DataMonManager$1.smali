.class Lcom/meizu/dm/scene/DataMonManager$1;
.super Landroid/os/Handler;
.source "DataMonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/dm/scene/DataMonManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/dm/scene/DataMonManager;


# direct methods
.method constructor <init>(Lcom/meizu/dm/scene/DataMonManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 52
    iput-object p1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    .line 57
    .local v0, "what":I
    const/16 v1, 0x29

    if-eq v0, v1, :cond_5d

    packed-switch v0, :pswitch_data_68

    goto :goto_66

    .line 80
    :pswitch_d  #0x1f
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$900(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 81
    goto :goto_66

    .line 77
    :pswitch_17  #0x1e
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$800(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 78
    goto :goto_66

    .line 74
    :pswitch_21  #0x1d
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$700(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 75
    goto :goto_66

    .line 71
    :pswitch_2b  #0x1c
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$600(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 72
    goto :goto_66

    .line 68
    :pswitch_35  #0x1b
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$500(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 69
    goto :goto_66

    .line 65
    :pswitch_3f  #0x1a
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$400(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 66
    goto :goto_66

    .line 62
    :pswitch_49  #0x19
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$300(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 63
    goto :goto_66

    .line 59
    :pswitch_53  #0x18
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$200(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 60
    goto :goto_66

    .line 83
    :cond_5d
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager$1;->this$0:Lcom/meizu/dm/scene/DataMonManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->access$1000(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V

    .line 86
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x18
        :pswitch_53  #00000018
        :pswitch_49  #00000019
        :pswitch_3f  #0000001a
        :pswitch_35  #0000001b
        :pswitch_2b  #0000001c
        :pswitch_21  #0000001d
        :pswitch_17  #0000001e
        :pswitch_d  #0000001f
    .end packed-switch
.end method
