.class Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;
.super Landroid/os/Handler;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 359
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_18

    goto :goto_17

    .line 370
    :pswitch_6  #0x402
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    goto :goto_17

    .line 366
    :pswitch_c  #0x401
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    goto :goto_17

    .line 362
    :pswitch_12  #0x400
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x400
        :pswitch_12  #00000400
        :pswitch_c  #00000401
        :pswitch_6  #00000402
    .end packed-switch
.end method
