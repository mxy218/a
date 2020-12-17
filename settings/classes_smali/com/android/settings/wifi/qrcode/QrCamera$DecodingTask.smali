.class Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;
.super Landroid/os/AsyncTask;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/qrcode/QrCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/settings/wifi/qrcode/QrCamera;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 231
    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;Lcom/android/settings/wifi/qrcode/QrCamera$1;)V
    .registers 4

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)Z
    .registers 10

    .line 285
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 286
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    const/4 v4, 0x0

    const-string v5, "Error to init Camera"

    const-string v6, "QrCamera"

    if-ge v3, v0, :cond_36

    .line 289
    :try_start_12
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 290
    iget v7, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v7, :cond_33

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 293
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {p1, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$402(Lcom/android/settings/wifi/qrcode/QrCamera;I)I

    goto :goto_36

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 297
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_4d

    const-string p1, "Cannot find available back camera."

    .line 298
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    return v2

    .line 302
    :cond_4d
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$500(Lcom/android/settings/wifi/qrcode/QrCamera;)V

    .line 303
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getViewSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$600(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/util/Size;)V

    .line 304
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$700(Lcom/android/settings/wifi/qrcode/QrCamera;)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 305
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1, v4}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 307
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_7a} :catch_7d

    return v2

    :cond_7b
    const/4 p0, 0x1

    return p0

    .line 312
    :catch_7d
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1, v4}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 314
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    return v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 227
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 7

    .line 237
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->initCamera(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 241
    :cond_a
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 245
    :cond_10
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 253
    :try_start_1e
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_6d

    .line 256
    :try_start_21
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    .line 257
    invoke-static {v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    iget-object v4, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v1, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_37
    .catch Lcom/google/zxing/ReaderException; {:try_start_21 .. :try_end_37} :catch_4c
    .catchall {:try_start_21 .. :try_end_37} :catchall_41

    .line 263
    :try_start_37
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_56

    :catchall_41
    move-exception p1

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :catch_4c
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v1, v0

    :goto_56
    if-eqz v1, :cond_10

    .line 266
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 267
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_6c} :catch_6d

    return-object p0

    .line 271
    :catch_6d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-object v0
.end method

.method public synthetic lambda$doInBackground$0$QrCamera$DecodingTask(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V
    .registers 4

    .line 247
    iget-object p3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p3, p2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$800(Lcom/android/settings/wifi/qrcode/QrCamera;[B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    .line 248
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 227
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 280
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
