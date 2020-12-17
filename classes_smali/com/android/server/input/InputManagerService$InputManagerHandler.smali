.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"  # Landroid/os/Looper;

    .line 2101
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 2102
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 2107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    goto :goto_4e

    .line 2124
    :pswitch_6  #0x6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2125
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 2126
    .local v1, "whenNanos":J
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2127
    .local v3, "inTabletMode":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->access$800(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_4e

    .line 2121
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "whenNanos":J
    .end local v3  # "inTabletMode":Z
    :pswitch_28  #0x5
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)V

    .line 2122
    goto :goto_4e

    .line 2118
    :pswitch_2e  #0x4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)V

    .line 2119
    goto :goto_4e

    .line 2115
    :pswitch_34  #0x3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)V

    .line 2116
    goto :goto_4e

    .line 2112
    :pswitch_3a  #0x2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;II)V

    .line 2113
    goto :goto_4e

    .line 2109
    :pswitch_44  #0x1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputDevice;

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    .line 2110
    nop

    .line 2130
    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_44  #00000001
        :pswitch_3a  #00000002
        :pswitch_34  #00000003
        :pswitch_2e  #00000004
        :pswitch_28  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
