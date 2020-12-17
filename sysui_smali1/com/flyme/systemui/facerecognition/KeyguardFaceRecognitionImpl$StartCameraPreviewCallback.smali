.class public abstract Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StartCameraPreviewCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAuthenticationTimeout()V
.end method

.method public abstract onCameraPreviewLaunchError()V
.end method

.method public abstract onCameraPreviewLaunchSucceed(Z)V
.end method

.method public abstract onCameraPreviewLaunching()V
.end method

.method public abstract onFaceCompare(Z)V
.end method

.method public abstract onFaceCompareFailShake()V
.end method

.method public abstract onFaceLoading()V
.end method

.method public abstract onFaceRecognitionError(I)V
.end method

.method public abstract onLockoutReset()V
.end method

.method public abstract onScreenBrightnessOverride(IF)V
.end method
