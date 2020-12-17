.class public interface abstract Lcom/android/keyguard/KeyguardUpdateMonitor$FaceRecognitionCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaceRecognitionCallback"
.end annotation


# virtual methods
.method public abstract isCameraPreviewStarting()Z
.end method

.method public abstract pauseCameraPreview(Z)V
.end method

.method public abstract postToStartCamera()V
.end method

.method public abstract postToStopCamera()V
.end method
