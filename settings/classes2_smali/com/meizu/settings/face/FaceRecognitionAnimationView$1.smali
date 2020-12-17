.class Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;
.super Landroid/os/Handler;
.source "FaceRecognitionAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/face/FaceRecognitionAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FaceRecognitionAnimationView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    .line 91
    iput-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 94
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    .line 95
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v2, "FaceRecognitionAnimationView"

    if-eq p1, v1, :cond_db

    const/4 v3, 0x2

    const-string v4, "loading_cry.json"

    const-string v5, "loading_cry_black.json"

    if-eq p1, v3, :cond_a5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_84

    const/4 v1, 0x4

    if-eq p1, v1, :cond_63

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    goto/16 :goto_113

    .line 129
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loading:mFailed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {v0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$000(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$000(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 131
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_48

    :cond_47
    move-object v4, v5

    :goto_48
    invoke-virtual {p1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5c

    .line 133
    :cond_4c
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "loading_smile.json"

    goto :goto_59

    :cond_57
    const-string v0, "loading_smile_black.json"

    :goto_59
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 135
    :goto_5c
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_113

    :cond_63
    const-string p1, "resetImage"

    .line 123
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$002(Lcom/meizu/settings/face/FaceRecognitionAnimationView;Z)Z

    .line 125
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "face.json"

    goto :goto_7a

    :cond_78
    const-string v0, "face_black.json"

    :goto_7a
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_113

    :cond_84
    const-string p1, "startFreezeAnimation"

    .line 117
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$002(Lcom/meizu/settings/face/FaceRecognitionAnimationView;Z)Z

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string v0, "lock.json"

    goto :goto_9b

    :cond_99
    const-string v0, "lock_black.json"

    :goto_9b
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_113

    :cond_a5
    const-string p1, "startFailureAnimation"

    .line 107
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$000(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 109
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_bb

    goto :goto_bc

    :cond_bb
    move-object v4, v5

    :goto_bc
    invoke-virtual {p1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_d0

    .line 111
    :cond_c0
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_cb

    const-string v0, "face_failure.json"

    goto :goto_cd

    :cond_cb
    const-string v0, "face_failure_black.json"

    :goto_cd
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 113
    :goto_d0
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1, v1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$002(Lcom/meizu/settings/face/FaceRecognitionAnimationView;Z)Z

    .line 114
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_113

    :cond_db
    const-string p1, "startSuccessAnimation"

    .line 97
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$000(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 99
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_f3

    const-string v1, "face_failure_success.json"

    goto :goto_f5

    :cond_f3
    const-string v1, "face_failure_success_black.json"

    :goto_f5
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_109

    .line 101
    :cond_f9
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$100(Lcom/meizu/settings/face/FaceRecognitionAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_104

    const-string v1, "face_success.json"

    goto :goto_106

    :cond_104
    const-string v1, "face_success_black.json"

    :goto_106
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 103
    :goto_109
    iget-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FaceRecognitionAnimationView;->access$002(Lcom/meizu/settings/face/FaceRecognitionAnimationView;Z)Z

    .line 104
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionAnimationView$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_113
    return-void
.end method
