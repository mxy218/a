.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;
.super Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;
.source "FaceRecognitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateFaceStartCameraPerviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-direct {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;)V
    .registers 3

    .line 175
    invoke-direct {p0, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationTimeout()V
    .registers 3

    const-string v0, "FaceRecognitionController"

    const-string v1, "onAuthenticationTimeout:"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStopCamera()V

    .line 311
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->onFaceAuthenticationTimeout()V

    return-void
.end method

.method public onCameraPreviewLaunchError()V
    .registers 5

    const-string v0, "FaceRecognitionController"

    const-string v1, "onStartCameraPerviewError:"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStopCamera()V

    .line 196
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$400(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_25

    .line 197
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$500(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$1;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_25
    return-void
.end method

.method public onCameraPreviewLaunchSucceed(Z)V
    .registers 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCameraPerviewEnd success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mIsStartingCamera "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$300(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceRecognitionController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$402(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;I)I

    .line 187
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$300(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 188
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->startListeningForFaceRecognition()V

    :cond_43
    return-void
.end method

.method public onCameraPreviewLaunching()V
    .registers 2

    const-string p0, "FaceRecognitionController"

    const-string v0, "onStartCameraPerviewStarting  noticeString:"

    .line 179
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFaceCompare(Z)V
    .registers 5

    if-eqz p1, :cond_d9

    .line 241
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 242
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->stopListeningForFaceRecognition()V

    .line 243
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->resetAuthUnlockAttempt()V

    .line 246
    :cond_1c
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    iget-object p1, p1, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/keyguard/SystemModeUtils;->switchSystemMode(I)V

    .line 247
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "mz_face_unlock_screen_launcher"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_39

    move p1, v1

    goto :goto_3a

    :cond_39
    move p1, v0

    .line 249
    :goto_3a
    iget-object v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$800(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    .line 250
    invoke-static {v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$800(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_53

    move v0, v1

    .line 251
    :cond_53
    iget-object v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceRecognitionSucceeded(Z)V

    .line 252
    iget-object v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->updateForFaceUnlock(Z)V

    if-nez p1, :cond_a3

    if-eqz v0, :cond_72

    goto :goto_a3

    .line 261
    :cond_72
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->startSuccessAnimation()V

    .line 262
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCanSetFingerprintState()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 263
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$500(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$5;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$5;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    :cond_95
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardModelChange()V

    goto :goto_b1

    .line 254
    :cond_a3
    :goto_a3
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$500(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$4;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$4;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    :goto_b1
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStopCamera()V

    .line 276
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentSystemMode()I

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    .line 278
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectFaceUnlockInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d9
    return-void
.end method

.method public onFaceCompareFailShake()V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->startFailureAnimation()V

    .line 285
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$500(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$6;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$6;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFaceLoading()V
    .registers 1

    .line 295
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->startLoadingAnimation()V

    return-void
.end method

.method public onFaceRecognitionError(I)V
    .registers 5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaceRecognitionError featureString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRecognitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x12c

    const/4 v2, 0x7

    if-ne p1, v2, :cond_2f

    .line 217
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->startFailureAnimation()V

    .line 218
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$500(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$2;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$2;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_51

    :cond_2f
    const/16 v2, 0x9

    if-ne p1, v2, :cond_51

    .line 225
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$702(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Z)Z

    .line 226
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->startFreezeAnimation()V

    .line 227
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$500(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$3;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$3;-><init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStopCamera()V

    .line 235
    :cond_51
    :goto_51
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "0"

    invoke-static {p0, p1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectFaceUnlockInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onLockoutReset()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$702(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Z)Z

    .line 301
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionSucceeded()Z

    move-result v0

    if-nez v0, :cond_28

    .line 302
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->resetFaceImage()V

    .line 303
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionState()V

    :cond_28
    return-void
.end method

.method public onScreenBrightnessOverride(IF)V
    .registers 3

    .line 316
    iget-object p2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$300(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 317
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$200(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;I)V

    :cond_d
    return-void
.end method
