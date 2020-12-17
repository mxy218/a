.class public Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "FaceEnrollPreviewFragment.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# instance fields
.field private mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

.field private final mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCircleView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    .line 86
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 113
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/android/settings/biometrics/face/ParticleCollection$Listener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->openCamera(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->configureTransform(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/android/settings/biometrics/face/FaceSquareTextureView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/util/Size;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/os/Handler;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private chooseOptimalSize([Landroid/util/Size;)Landroid/util/Size;
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    .line 287
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 288
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x438

    if-ne v1, v2, :cond_1c

    aget-object v1, p1, v0

    .line 289
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x780

    if-ne v1, v2, :cond_1c

    .line 290
    aget-object p0, p1, v0

    return-object p0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    const-string v0, "FaceEnrollPreviewFragment"

    const-string v1, "Unable to find a good resolution"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    aget-object p0, p1, p0

    return-object p0
.end method

.method private closeCamera()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 331
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 332
    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 334
    :cond_a
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_13

    .line 335
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 336
    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_13
    return-void
.end method

.method private configureTransform(II)V
    .registers 7

    .line 306
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    int-to-float p1, p1

    .line 311
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 312
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 315
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    .line 320
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 323
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    mul-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 326
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setScaleY(F)V

    return-void
.end method

.method private openCamera(II)V
    .registers 7

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setUpCameraOutputs()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->configureTransform(II)V
    :try_end_11
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string p1, "FaceEnrollPreviewFragment"

    const-string p2, "Unable to open camera"

    .line 279
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method private setUpCameraOutputs()V
    .registers 7

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_45

    aget-object v3, v0, v2

    .line 247
    iget-object v4, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 248
    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 251
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3a

    .line 252
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_3a

    .line 255
    :cond_23
    iput-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraId:Ljava/lang/String;

    .line 258
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 260
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->chooseOptimalSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;
    :try_end_39
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_39} :catch_3d

    goto :goto_45

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_3d
    move-exception p0

    const-string v0, "FaceEnrollPreviewFragment"

    const-string v1, "Unable to access camera"

    .line 264
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_45
    :goto_45
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x612

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 188
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a073f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a017c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCircleView:Landroid/widget/ImageView;

    .line 193
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCircleView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 195
    new-instance p1, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/ParticleCollection$Listener;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    .line 196
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCircleView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .registers 3

    .line 224
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .registers 3

    .line 229
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .registers 3

    .line 234
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->onEnrollmentProgressChange(II)V

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 218
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 219
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->closeCamera()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 203
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 210
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->openCamera(II)V

    goto :goto_22

    .line 212
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_22
    return-void
.end method

.method public setListener(Lcom/android/settings/biometrics/face/ParticleCollection$Listener;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    return-void
.end method