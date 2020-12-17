.class Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;
.super Landroid/os/Handler;
.source "FaceRecognitionAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    .line 117
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 120
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 121
    :goto_9
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v3, "FaceRecognitionAnimationView"

    if-eq p1, v2, :cond_cd

    const/4 v4, 0x2

    const-string v5, "loading_cry.json"

    const-string v6, "loading_cry_black.json"

    if-eq p1, v4, :cond_96

    const/4 v2, 0x3

    if-eq p1, v2, :cond_74

    const/4 v2, 0x4

    if-eq p1, v2, :cond_53

    const/4 v1, 0x5

    if-eq p1, v1, :cond_21

    goto/16 :goto_106

    :cond_21
    const-string p1, "loading"

    .line 155
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 157
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    move-object v5, v6

    :goto_38
    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_4c

    .line 159
    :cond_3c
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "loading_smile.json"

    goto :goto_49

    :cond_47
    const-string v1, "loading_smile_black.json"

    :goto_49
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 161
    :goto_4c
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$200(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)V

    goto/16 :goto_106

    :cond_53
    const-string p1, "resetImage"

    .line 149
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$002(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)Z

    .line 151
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "face.json"

    goto :goto_6a

    :cond_68
    const-string v1, "face_black.json"

    :goto_6a
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$200(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)V

    goto/16 :goto_106

    :cond_74
    const-string/jumbo p1, "startFreezeAnimation"

    .line 143
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$002(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)Z

    .line 145
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "lock.json"

    goto :goto_8c

    :cond_8a
    const-string v1, "lock_black.json"

    :goto_8c
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$200(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)V

    goto/16 :goto_106

    :cond_96
    const-string/jumbo p1, "startFailureAnimation"

    .line 133
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 135
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_ad

    goto :goto_ae

    :cond_ad
    move-object v5, v6

    :goto_ae
    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_c2

    .line 137
    :cond_b2
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_bd

    const-string v1, "face_failure.json"

    goto :goto_bf

    :cond_bd
    const-string v1, "face_failure_black.json"

    :goto_bf
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 139
    :goto_c2
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1, v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$002(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)Z

    .line 140
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$200(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)V

    goto :goto_106

    :cond_cd
    const-string/jumbo p1, "startSuccessAnimation"

    .line 123
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 125
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result v2

    if-eqz v2, :cond_e6

    const-string v2, "face_failure_success.json"

    goto :goto_e8

    :cond_e6
    const-string v2, "face_failure_success_black.json"

    :goto_e8
    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_fc

    .line 127
    :cond_ec
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)Z

    move-result v2

    if-eqz v2, :cond_f7

    const-string v2, "face_success.json"

    goto :goto_f9

    :cond_f7
    const-string v2, "face_success_black.json"

    :goto_f9
    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 129
    :goto_fc
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p1, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$002(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)Z

    .line 130
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-static {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->access$200(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;Z)V

    :goto_106
    return-void
.end method
