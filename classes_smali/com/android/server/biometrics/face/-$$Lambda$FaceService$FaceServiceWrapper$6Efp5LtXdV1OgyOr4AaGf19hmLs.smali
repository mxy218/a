.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/hardware/face/IFaceServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$3:I

    iput-object p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$3:I

    iget-object v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$getFeature$3$FaceService$FaceServiceWrapper(ILjava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V

    return-void
.end method
