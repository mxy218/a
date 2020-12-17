.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;
.super Landroid/os/Handler;
.source "FlymeConfirmPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V
    .registers 2

    .line 1342
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1344
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b4

    const/16 v1, 0x40

    if-eq v0, v1, :cond_9f

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_130

    goto/16 :goto_12e

    .line 1405
    :pswitch_10  #0x1f47
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$4200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->closeHardwareDevice()Z

    .line 1406
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$4000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    .line 1407
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->setVisible(Z)V

    goto/16 :goto_12e

    .line 1401
    :pswitch_29  #0x1f46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenBrightnessOverride sendMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmPasswordMeizu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$4000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    goto/16 :goto_12e

    .line 1393
    :pswitch_4a  #0x1f45
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->startFreezeAnimation()V

    .line 1394
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$4000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    .line 1395
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$4200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->endVerify()V

    goto/16 :goto_12e

    .line 1398
    :pswitch_63  #0x1f44
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->startLoadingAnimation()V

    goto/16 :goto_12e

    .line 1390
    :pswitch_6e  #0x1f43
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->startFreezeAnimation()V

    goto/16 :goto_12e

    .line 1375
    :pswitch_79  #0x1f42
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->startSuccessAnimation()V

    .line 1377
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17$1;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12e

    .line 1387
    :pswitch_94  #0x1f41
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->startFailureAnimation()V

    goto/16 :goto_12e

    .line 1372
    :cond_9f
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3700(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    goto/16 :goto_12e

    .line 1346
    :cond_b4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x101

    const v3, 0x7f120db1

    if-ne v0, v1, :cond_fd

    .line 1347
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f7

    .line 1348
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    .line 1349
    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2500(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getSecreteModeFingerprintId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 1350
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    goto :goto_12e

    .line 1352
    :cond_e2
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1, v3}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    .line 1353
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->startVerify(Landroid/os/Handler;)V

    goto :goto_12e

    .line 1356
    :cond_f7
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    goto :goto_12e

    :cond_fd
    const/16 v1, 0x104

    if-eq v0, v1, :cond_125

    const/16 v1, 0x105

    if-ne v0, v1, :cond_106

    goto :goto_125

    :cond_106
    const/16 p1, 0x9

    if-ne v0, p1, :cond_11a

    .line 1362
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2602(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)I

    .line 1363
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result p1

    invoke-static {p0, p1, v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;II)V

    goto :goto_12e

    :cond_11a
    const/16 p1, 0x103

    if-eq v0, p1, :cond_11f

    return-void

    .line 1368
    :cond_11f
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0, v3}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    goto :goto_12e

    .line 1360
    :cond_125
    :goto_125
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3500(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;II)V

    :goto_12e
    return-void

    nop

    :pswitch_data_130
    .packed-switch 0x1f41
        :pswitch_94  #00001f41
        :pswitch_79  #00001f42
        :pswitch_6e  #00001f43
        :pswitch_63  #00001f44
        :pswitch_4a  #00001f45
        :pswitch_29  #00001f46
        :pswitch_10  #00001f47
    .end packed-switch
.end method
