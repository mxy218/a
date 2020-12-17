.class Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;
.super Landroid/os/Handler;
.source "ConnectionRateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 219
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb9

    if-eq v0, v1, :cond_d2

    packed-switch v0, :pswitch_data_e0

    goto/16 :goto_df

    .line 245
    :pswitch_23  #0x3eb
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$1000(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Z)V

    goto/16 :goto_df

    .line 237
    :pswitch_2b  #0x3ea
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$400()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_CONNECTION_STOP_SAMPLING"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3a
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$300(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$700(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;D)V

    .line 239
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$800(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object p1

    if-eqz p1, :cond_df

    .line 240
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$900(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$800(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$802(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    goto/16 :goto_df

    .line 229
    :pswitch_62  #0x3e9
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$400()Z

    move-result p1

    if-eqz p1, :cond_71

    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_CONNECTION_START_SAMPLING"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_71
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$300(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$700(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;D)V

    .line 231
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$800(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object p1

    if-nez p1, :cond_df

    .line 232
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    new-instance v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    invoke-direct {v0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;-><init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$802(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    .line 233
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$900(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$800(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_df

    .line 222
    :pswitch_9c  #0x3e8
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$400()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_CONNECTION_RATE_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_ab
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$700(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;D)V

    .line 224
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$800(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object p1

    if-eqz p1, :cond_df

    .line 225
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$900(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$800(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_df

    .line 248
    :cond_d2
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$1100(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Z)V

    :cond_df
    :goto_df
    return-void

    :pswitch_data_e0
    .packed-switch 0x3e8
        :pswitch_9c  #000003e8
        :pswitch_62  #000003e9
        :pswitch_2b  #000003ea
        :pswitch_23  #000003eb
    .end packed-switch
.end method
