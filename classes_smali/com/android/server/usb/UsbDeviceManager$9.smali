.class Lcom/android/server/usb/UsbDeviceManager$9;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 2982
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$9;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$9;->val$file:Landroid/content/res/AssetFileDescriptor;

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$9;->val$audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .param p1, "mp"  # Landroid/media/MediaPlayer;
    .param p2, "what"  # I
    .param p3, "extra"  # I

    .line 2985
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play set usb mode sound error what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$9;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2987
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$9;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2988
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$9;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1502(Lcom/android/server/usb/UsbDeviceManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2991
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$9;->val$file:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_40

    .line 2992
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$9;->val$file:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_40} :catch_41

    .line 2996
    :cond_40
    goto :goto_45

    .line 2994
    :catch_41
    move-exception v0

    .line 2995
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2998
    .end local v0  # "e":Ljava/io/IOException;
    :goto_45
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$9;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$9;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v2

    if-ge v0, v2, :cond_62

    .line 2999
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$9;->val$audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$9;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3001
    :cond_62
    return v1
.end method
