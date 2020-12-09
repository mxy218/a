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

    .line 2186
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 2187
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2188
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 2192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    goto :goto_4e

    .line 2209
    :pswitch_6  #0x6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2210
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 2211
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2212
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_4e

    .line 2206
    :pswitch_28  #0x5
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;)V

    .line 2207
    goto :goto_4e

    .line 2203
    :pswitch_2e  #0x4
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;)V

    .line 2204
    goto :goto_4e

    .line 2200
    :pswitch_34  #0x3
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)V

    .line 2201
    goto :goto_4e

    .line 2197
    :pswitch_3a  #0x2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$1000(Lcom/android/server/input/InputManagerService;II)V

    .line 2198
    goto :goto_4e

    .line 2194
    :pswitch_44  #0x1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/view/InputDevice;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    .line 2195
    nop

    .line 2215
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
