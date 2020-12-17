.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;
.super Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;
.source "KeyguardFaceRecognitionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-direct {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 2

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationError msgId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardFaceRecognitionImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p2}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p2

    if-eqz p2, :cond_3c

    .line 117
    iget-object p2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p2}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onFaceRecognitionError(I)V

    .line 118
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$400(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->clearWakeupState()V

    .line 120
    :cond_3c
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$102(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;I)I

    .line 121
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$002(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Z)Z

    .line 122
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$300(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAuthenticationFailed(I)V
    .registers 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationFailed mRecongnizeFailTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$100(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFaceRecognitionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$000(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return-void

    :cond_2d
    const/16 v0, 0x65

    if-eq p1, v0, :cond_35

    const/16 v0, 0x78

    if-ne p1, v0, :cond_9e

    .line 77
    :cond_35
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$108(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)I

    .line 78
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$002(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Z)Z

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compare failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$100(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$100(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_7b

    .line 81
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onFaceCompareFailShake()V

    .line 82
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iget-object v0, p1, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$300(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_91

    .line 84
    :cond_7b
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onFaceLoading()V

    .line 85
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iget-object v0, p1, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$300(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :goto_91
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$400(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->clearWakeupState()V

    :cond_9e
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationResult;)V
    .registers 3

    const-string p1, "KeyguardFaceRecognitionImpl"

    const-string v0, "onAuthenticationSucceeded"

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$102(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;I)I

    .line 99
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 100
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$002(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Z)Z

    .line 101
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onFaceCompare(Z)V

    .line 102
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$400(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->clearWakeupState()V

    :cond_31
    return-void
.end method

.method public onAuthenticationTimeout()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 132
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onAuthenticationTimeout()V

    :cond_11
    return-void
.end method

.method public onScreenBrightnessOverride(IF)V
    .registers 5

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenBrightnessOverride, screenbrightnessvalue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ambientLux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFaceRecognitionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$2;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onScreenBrightnessOverride(IF)V

    return-void
.end method
