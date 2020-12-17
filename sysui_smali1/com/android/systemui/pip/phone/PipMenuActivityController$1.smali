.class Lcom/android/systemui/pip/phone/PipMenuActivityController$1;
.super Landroid/os/Handler;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .registers 1

    .line 145
    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipExpand()V

    return-void
.end method

.method static synthetic lambda$handleMessage$1(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .registers 1

    .line 149
    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMinimize()V

    return-void
.end method

.method static synthetic lambda$handleMessage$2(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .registers 1

    .line 153
    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipDismiss()V

    return-void
.end method

.method static synthetic lambda$handleMessage$3(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .registers 1

    .line 157
    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipShowMenu()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_69

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_76

    goto :goto_74

    .line 161
    :pswitch_b  #0x68
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$202(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 162
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$300(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)V

    .line 163
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$400(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 164
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$400(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 165
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$402(Lcom/android/systemui/pip/phone/PipMenuActivityController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 168
    :cond_2f
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;

    move-result-object p1

    if-nez p1, :cond_74

    .line 169
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    goto :goto_74

    .line 153
    :pswitch_3d  #0x67
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_74

    .line 149
    :pswitch_49  #0x66
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$o9fLqvuiKIYwdsSexRT0X4Ty0V4;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$o9fLqvuiKIYwdsSexRT0X4Ty0V4;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_74

    .line 145
    :pswitch_55  #0x65
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$8btqC3E6FFjbjLWUhiNmbnKUlfI;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$8btqC3E6FFjbjLWUhiNmbnKUlfI;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_74

    .line 140
    :pswitch_61  #0x64
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 141
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0, p1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    goto :goto_74

    .line 157
    :cond_69
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_74
    :goto_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x64
        :pswitch_61  #00000064
        :pswitch_55  #00000065
        :pswitch_49  #00000066
        :pswitch_3d  #00000067
        :pswitch_b  #00000068
    .end packed-switch
.end method
