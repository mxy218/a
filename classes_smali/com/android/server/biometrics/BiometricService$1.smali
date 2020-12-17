.class Lcom/android/server/biometrics/BiometricService$1;
.super Landroid/os/Handler;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/biometrics/BiometricService;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 290
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"  # Landroid/os/Message;

    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_104

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 393
    :pswitch_1d  #0xd
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricService;->access$1400(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 395
    goto/16 :goto_103

    .line 384
    :pswitch_28  #0xc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 385
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->access$1300(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 389
    goto/16 :goto_103

    .line 379
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3c  #0xb
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1200(Lcom/android/server/biometrics/BiometricService;)V

    .line 380
    goto/16 :goto_103

    .line 370
    :pswitch_43  #0xa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 371
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->access$1100(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 375
    goto/16 :goto_103

    .line 353
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_59  #0x9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 354
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 356
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v11, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v12, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 354
    invoke-static/range {v1 .. v12}, Lcom/android/server/biometrics/BiometricService;->access$1000(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 365
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 366
    goto/16 :goto_103

    .line 343
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8b  #0x8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 344
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 346
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 344
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricService;->access$900(Lcom/android/server/biometrics/BiometricService;IZI)V

    .line 348
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 349
    goto :goto_103

    .line 338
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a4  #0x7
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$800(Lcom/android/server/biometrics/BiometricService;)V

    .line 339
    goto :goto_103

    .line 333
    :pswitch_aa  #0x6
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricService;->access$700(Lcom/android/server/biometrics/BiometricService;I)V

    .line 334
    goto :goto_103

    .line 324
    :pswitch_b2  #0x5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 325
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->access$600(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 329
    goto :goto_103

    .line 314
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c5  #0x4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 315
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricService;->access$500(Lcom/android/server/biometrics/BiometricService;IILjava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 320
    goto :goto_103

    .line 309
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_da  #0x3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricService;->access$400(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;)V

    .line 310
    goto :goto_103

    .line 300
    :pswitch_e4  #0x2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 301
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 302
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [B

    .line 301
    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->access$300(Lcom/android/server/biometrics/BiometricService;Z[B)V

    .line 304
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 305
    goto :goto_103

    .line 295
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_fd  #0x1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$200(Lcom/android/server/biometrics/BiometricService;)V

    .line 296
    nop

    .line 402
    :goto_103
    return-void

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_fd  #00000001
        :pswitch_e4  #00000002
        :pswitch_da  #00000003
        :pswitch_c5  #00000004
        :pswitch_b2  #00000005
        :pswitch_aa  #00000006
        :pswitch_a4  #00000007
        :pswitch_8b  #00000008
        :pswitch_59  #00000009
        :pswitch_43  #0000000a
        :pswitch_3c  #0000000b
        :pswitch_28  #0000000c
        :pswitch_1d  #0000000d
    .end packed-switch
.end method
