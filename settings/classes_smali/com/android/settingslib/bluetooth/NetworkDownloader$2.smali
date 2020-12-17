.class Lcom/android/settingslib/bluetooth/NetworkDownloader$2;
.super Ljava/lang/Object;
.source "NetworkDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadXmlFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$fileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 405
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->val$fileUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    .line 421
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p0

    const/16 p1, 0x65

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 422
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "download xml start failed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkDownloader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->val$fileUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->val$fileName:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1200(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 412
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 415
    :cond_1c
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p0

    const/16 p1, 0x65

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p0, "NetworkDownloader"

    const-string p1, "download xml failed"

    .line 416
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method
