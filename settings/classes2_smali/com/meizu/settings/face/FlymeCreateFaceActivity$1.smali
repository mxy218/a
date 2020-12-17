.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;
.super Landroid/os/Handler;
.source "FlymeCreateFaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeCreateFaceActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x7530

    const/16 v6, 0xb

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_2d2

    :pswitch_24  #0x8, 0x9
    goto/16 :goto_2d1

    .line 206
    :pswitch_26  #0xc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SCREEN_OFF :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/face/FaceUtil;->isFaceDataExist(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Z

    move-result p1

    if-nez p1, :cond_55

    .line 208
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    .line 210
    :cond_55
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2d1

    .line 128
    :pswitch_5c  #0xb
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    .line 129
    invoke-static {v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$900(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    .line 130
    invoke-static {v2}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$500(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CirclePreviewView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v3}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->getPreviewScaleX()F

    move-result v3

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->getPreviewScaleY()F

    move-result p0

    invoke-virtual {v2, v3, p0}, Lcom/meizu/settings/widget/CirclePreviewView;->getMaskRect(FF)Landroid/graphics/Rect;

    move-result-object p0

    .line 128
    invoke-interface {p1, v0, v1, p0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->startEnroll(Landroid/os/Handler;[BLandroid/graphics/Rect;)V

    goto/16 :goto_2d1

    .line 177
    :pswitch_91  #0xa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_CAMERA_PERVIEW_STARTED_SUCCESS :"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_b2

    .line 179
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    goto/16 :goto_2d1

    :cond_b2
    if-ne v0, v7, :cond_2d1

    .line 181
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1$1;

    invoke-direct {v7, p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1$1;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;

    if-eqz p1, :cond_100

    .line 189
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    new-instance v7, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraHeight()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v7}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2102(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/util/Size;)Landroid/util/Size;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cameraPreviewProperty getCameraWidth:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraWidth()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",getCameraHeight:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_100
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$600(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Z

    move-result p1

    if-eqz p1, :cond_2d1

    .line 195
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->setAspectRatio()V

    .line 196
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->setSurfaceTextureDefaultBufferSize()V

    const-string p1, "MSG_CAMERA_PERVIEW_STARTED_SUCCESS startEnroll"

    .line 197
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2d1

    .line 170
    :pswitch_151  #0x7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UPDATE_SAVEFEATURE_PROGRESS progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$500(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CirclePreviewView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/CirclePreviewView;->setProgress(I)V

    goto/16 :goto_2d1

    .line 164
    :pswitch_17f  #0x5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    .line 165
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CameraLoadingTextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2d1

    :pswitch_18e  #0x4
    const-string v0, "MSG_SET_FACE_SAVEFEATURE_NOTICE_TEXT_VIEW"

    .line 157
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    .line 159
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->startShakeAnim(Landroid/view/View;)V

    .line 161
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1900(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Vibrator;

    move-result-object p0

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_2d1

    :pswitch_1b6  #0x3
    const-string p1, "MSG_SET_CMMERA_PREVIEW_VIEW_GONE"

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Z

    move-result p1

    if-nez p1, :cond_2d1

    .line 135
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1d4

    .line 136
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    :cond_1d4
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1e5

    .line 139
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 141
    :cond_1e5
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p1

    if-eqz p1, :cond_216

    .line 142
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->endEnroll()V

    .line 143
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->closeHardwareDevice()Z

    .line 144
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_216

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->destroy()V

    .line 146
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1402(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/view/Surface;)Landroid/view/Surface;

    .line 149
    :cond_216
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1500(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 151
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1, v2}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$602(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Z)Z

    .line 152
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1, v7}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1602(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Z)Z

    .line 153
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    goto/16 :goto_2d1

    .line 120
    :pswitch_246  #0x2
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1, v7}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$602(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Z)Z

    .line 121
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->setSurfaceTextureDefaultBufferSize()V

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2d1

    :pswitch_285  #0x1
    const-string p1, "MSG_SET_CAMERA_LOADING_VIEW_GONE"

    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1, v7}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 113
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CameraLoadingTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->getCircleProperties()Lcom/meizu/settings/widget/CircleProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;->setCircleProperties(Lcom/meizu/settings/widget/CircleProperties;)V

    .line 114
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CameraLoadingTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/widget/CameraLoadingTextView;->setCircleOutlineProvider()V

    .line 115
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->setCircleOutlineProvider()V

    .line 116
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$500(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CirclePreviewView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->getCircleProperties()Lcom/meizu/settings/widget/CircleProperties;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/CirclePreviewView;->setCircleProperties(Lcom/meizu/settings/widget/CircleProperties;)V

    :cond_2d1
    :goto_2d1
    :pswitch_2d1  #0x6
    return-void

    :pswitch_data_2d2
    .packed-switch 0x1
        :pswitch_285  #00000001
        :pswitch_246  #00000002
        :pswitch_1b6  #00000003
        :pswitch_18e  #00000004
        :pswitch_17f  #00000005
        :pswitch_2d1  #00000006
        :pswitch_151  #00000007
        :pswitch_24  #00000008
        :pswitch_24  #00000009
        :pswitch_91  #0000000a
        :pswitch_5c  #0000000b
        :pswitch_26  #0000000c
    .end packed-switch
.end method
