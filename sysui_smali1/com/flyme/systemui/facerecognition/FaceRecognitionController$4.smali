.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$4;
.super Ljava/lang/Object;
.source "FaceRecognitionController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$4;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    const-string p0, "FaceRecognitionController"

    const-string v0, "KeyguardViewMediator binderDied"

    .line 341
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
