.class public interface abstract Lcom/meizu/settings/face/FlymeIFaceRecognition;
.super Ljava/lang/Object;
.source "FlymeIFaceRecognition.java"


# virtual methods
.method public abstract closeHardwareDevice()Z
.end method

.method public abstract deleteFaceMetadatas()V
.end method

.method public abstract endEnroll()V
.end method

.method public abstract endVerify()V
.end method

.method public abstract isFaceRecognitionServiceEnabled()Z
.end method

.method public abstract resetTimeout([B)V
.end method

.method public abstract startEnroll(Landroid/os/Handler;[BLandroid/graphics/Rect;)V
.end method

.method public abstract startVerify(Landroid/os/Handler;I)V
.end method

.method public abstract warmUpHardwareDeviceForPreview(Landroid/view/Surface;Landroid/os/Handler;II)Z
.end method
