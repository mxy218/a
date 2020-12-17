.class Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$1;
.super Ljava/lang/Object;
.source "FaceRecognitionAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->onFaceAuthenticationTimeout()V
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

    .line 93
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$1;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView$1;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    return-void
.end method
