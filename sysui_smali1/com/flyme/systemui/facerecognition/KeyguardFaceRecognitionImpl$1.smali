.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$1;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 55
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$1;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$1;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$002(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Z)Z

    return-void
.end method
