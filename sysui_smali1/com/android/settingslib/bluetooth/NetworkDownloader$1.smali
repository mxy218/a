.class Lcom/android/settingslib/bluetooth/NetworkDownloader$1;
.super Ljava/lang/Object;
.source "NetworkDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/bluetooth/NetworkDownloader;->checkAndDownloadXml()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$1;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    .line 266
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$1;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p0

    const/16 p1, 0x68

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p0, "NetworkDownloader"

    const-string p1, "check tws update fail!"

    .line 267
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "NetworkDownloader"

    const-wide/16 v0, 0x3e8

    const/16 v2, 0x68

    .line 273
    :try_start_6
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/FileCheckBean;->getIntervalCheck(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/FileCheckBean;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 275
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/FileCheckBean;->getHttpCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_46

    .line 276
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/FileCheckBean;->needUpdate()Z

    move-result p2

    if-eqz p2, :cond_28

    .line 277
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$1;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$600(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    goto :goto_8b

    .line 279
    :cond_28
    sget-object p2, Lcom/android/settingslib/bluetooth/XmlReader;->VIDEO_FILE_PATH:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/Util;->isVideoFilesExist(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_40

    .line 280
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$1;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p2

    const/16 v3, 0x64

    invoke-virtual {p2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8b

    :cond_40
    const-string p2, "check tws no need update"

    .line 283
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 286
    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check tws update fail, checkBean vailable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_54

    const/4 p2, 0x1

    goto :goto_55

    :cond_54
    const/4 p2, 0x0

    :goto_55
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$1;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p2

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_68} :catch_69

    goto :goto_8b

    :catch_69
    move-exception p2

    .line 290
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$1;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "check tws update exception: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b
    return-void
.end method
