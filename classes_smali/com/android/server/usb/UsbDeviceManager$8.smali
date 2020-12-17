.class Lcom/android/server/usb/UsbDeviceManager$8;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager;->playSetUsbModeSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;

.field final synthetic val$audioManager:Landroid/media/AudioManager;

.field final synthetic val$file:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/content/res/AssetFileDescriptor;Landroid/media/AudioManager;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/usb/UsbDeviceManager;

    .line 2962
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$8;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$8;->val$file:Landroid/content/res/AssetFileDescriptor;

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$8;->val$audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"  # Landroid/media/MediaPlayer;

    .line 2965
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$8;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2966
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$8;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2967
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$8;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1502(Lcom/android/server/usb/UsbDeviceManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2970
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$8;->val$file:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_20

    .line 2971
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$8;->val$file:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_21

    .line 2975
    :cond_20
    goto :goto_25

    .line 2973
    :catch_21
    move-exception v0

    .line 2974
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2977
    .end local v0  # "e":Ljava/io/IOException;
    :goto_25
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$8;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$8;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 2978
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$8;->val$audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$8;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2980
    :cond_42
    return-void
.end method
