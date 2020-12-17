.class Lcom/android/systemui/usb/ExternalStorageActivity$2;
.super Ljava/lang/Thread;
.source "ExternalStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/ExternalStorageActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/ExternalStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/ExternalStorageActivity;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-static {v0}, Lcom/android/systemui/usb/ExternalStorageActivity;->access$100(Lcom/android/systemui/usb/ExternalStorageActivity;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-static {v1}, Lcom/android/systemui/usb/ExternalStorageActivity;->access$000(Lcom/android/systemui/usb/ExternalStorageActivity;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->unmountExternalVolume(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_3a

    .line 97
    :catch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unmountExternalVolume diskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-static {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->access$000(Lcom/android/systemui/usb/ExternalStorageActivity;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " RemoteException"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExternalStorageActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method
