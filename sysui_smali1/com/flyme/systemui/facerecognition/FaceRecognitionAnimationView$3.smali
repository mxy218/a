.class Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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
.method constructor <init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$3;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4

    .line 191
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, p1, :cond_10

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, p1, :cond_9

    goto :goto_10

    .line 194
    :cond_9
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$3;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    goto :goto_16

    .line 192
    :cond_10
    :goto_10
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$3;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    :goto_16
    return-void
.end method
