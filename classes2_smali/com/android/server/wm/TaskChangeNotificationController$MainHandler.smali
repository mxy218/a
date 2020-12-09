.class Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V
    .registers 3

    .line 178
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 179
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_112

    goto/16 :goto_110

    .line 258
    :pswitch_7  #0x18
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_110

    .line 255
    :pswitch_12  #0x17
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 256
    goto/16 :goto_110

    .line 252
    :pswitch_1d  #0x16
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 253
    goto/16 :goto_110

    .line 249
    :pswitch_28  #0x15
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 250
    goto/16 :goto_110

    .line 246
    :pswitch_33  #0x14
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 247
    goto/16 :goto_110

    .line 237
    :pswitch_3e  #0x13
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 238
    goto/16 :goto_110

    .line 234
    :pswitch_49  #0x12
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 235
    goto/16 :goto_110

    .line 216
    :pswitch_54  #0x11
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 217
    goto/16 :goto_110

    .line 222
    :pswitch_5f  #0x10
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 223
    goto/16 :goto_110

    .line 243
    :pswitch_6a  #0xf
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 244
    goto/16 :goto_110

    .line 240
    :pswitch_75  #0xe
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 241
    goto/16 :goto_110

    .line 210
    :pswitch_80  #0xd
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 211
    goto/16 :goto_110

    .line 207
    :pswitch_8b  #0xc
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 208
    goto/16 :goto_110

    .line 204
    :pswitch_96  #0xb
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 205
    goto/16 :goto_110

    .line 201
    :pswitch_a1  #0xa
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 202
    goto :goto_110

    .line 198
    :pswitch_ab  #0x9
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 199
    goto :goto_110

    .line 195
    :pswitch_b5  #0x8
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 196
    goto :goto_110

    .line 231
    :pswitch_bf  #0x7
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 232
    goto :goto_110

    .line 228
    :pswitch_c9  #0x6
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 229
    goto :goto_110

    .line 225
    :pswitch_d3  #0x5
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 226
    goto :goto_110

    .line 219
    :pswitch_dd  #0x4
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 220
    goto :goto_110

    .line 213
    :pswitch_e7  #0x3
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 214
    goto :goto_110

    .line 192
    :pswitch_f1  #0x2
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 193
    goto :goto_110

    .line 186
    :pswitch_fb  #0x1
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$000(Lcom/android/server/wm/TaskChangeNotificationController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 187
    :try_start_102
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/ActivityStackSupervisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->logStackState()V

    .line 188
    monitor-exit p1

    .line 189
    goto :goto_110

    .line 188
    :catchall_10d
    move-exception v0

    monitor-exit p1
    :try_end_10f
    .catchall {:try_start_102 .. :try_end_10f} :catchall_10d

    throw v0

    .line 261
    :goto_110
    return-void

    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_fb  #00000001
        :pswitch_f1  #00000002
        :pswitch_e7  #00000003
        :pswitch_dd  #00000004
        :pswitch_d3  #00000005
        :pswitch_c9  #00000006
        :pswitch_bf  #00000007
        :pswitch_b5  #00000008
        :pswitch_ab  #00000009
        :pswitch_a1  #0000000a
        :pswitch_96  #0000000b
        :pswitch_8b  #0000000c
        :pswitch_80  #0000000d
        :pswitch_75  #0000000e
        :pswitch_6a  #0000000f
        :pswitch_5f  #00000010
        :pswitch_54  #00000011
        :pswitch_49  #00000012
        :pswitch_3e  #00000013
        :pswitch_33  #00000014
        :pswitch_28  #00000015
        :pswitch_1d  #00000016
        :pswitch_12  #00000017
        :pswitch_7  #00000018
    .end packed-switch
.end method
