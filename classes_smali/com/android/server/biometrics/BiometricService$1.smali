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

    .line 292
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_104

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 395
    :pswitch_1d  #0xd
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/BiometricService;->access$1400(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 397
    goto/16 :goto_103

    .line 386
    :pswitch_28  #0xc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 387
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->access$1300(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 391
    goto/16 :goto_103

    .line 381
    :pswitch_3c  #0xb
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$1200(Lcom/android/server/biometrics/BiometricService;)V

    .line 382
    goto/16 :goto_103

    .line 372
    :pswitch_43  #0xa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 373
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->access$1100(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 377
    goto/16 :goto_103

    .line 355
    :pswitch_59  #0x9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 356
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 358
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v9, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v10, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v11, p1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v11, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 356
    invoke-static/range {v0 .. v11}, Lcom/android/server/biometrics/BiometricService;->access$1000(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 367
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 368
    goto/16 :goto_103

    .line 345
    :pswitch_8b  #0x8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 346
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 348
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 346
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->access$900(Lcom/android/server/biometrics/BiometricService;IZI)V

    .line 350
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 351
    goto :goto_103

    .line 340
    :pswitch_a4  #0x7
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$800(Lcom/android/server/biometrics/BiometricService;)V

    .line 341
    goto :goto_103

    .line 335
    :pswitch_aa  #0x6
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/biometrics/BiometricService;->access$700(Lcom/android/server/biometrics/BiometricService;I)V

    .line 336
    goto :goto_103

    .line 326
    :pswitch_b2  #0x5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 327
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->access$600(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 331
    goto :goto_103

    .line 316
    :pswitch_c5  #0x4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 317
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->access$500(Lcom/android/server/biometrics/BiometricService;IILjava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 322
    goto :goto_103

    .line 311
    :pswitch_da  #0x3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/BiometricService;->access$400(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;)V

    .line 312
    goto :goto_103

    .line 302
    :pswitch_e4  #0x2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 303
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 304
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, [B

    .line 303
    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->access$300(Lcom/android/server/biometrics/BiometricService;Z[B)V

    .line 306
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 307
    goto :goto_103

    .line 297
    :pswitch_fd  #0x1
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$200(Lcom/android/server/biometrics/BiometricService;)V

    .line 298
    nop

    .line 404
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
