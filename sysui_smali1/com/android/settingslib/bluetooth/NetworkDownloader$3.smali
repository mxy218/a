.class Lcom/android/settingslib/bluetooth/NetworkDownloader$3;
.super Ljava/lang/Object;
.source "NetworkDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadIconFile(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 435
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    .line 470
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p0

    const/16 p1, 0x67

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 472
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "download icon start failed "

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1300(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 442
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1400(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z

    move-result p2

    goto :goto_1f

    .line 444
    :cond_15
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1200(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z

    move-result p2

    :goto_1f
    const-string v0, "NetworkDownloader"

    if-eqz p2, :cond_6a

    if-eqz p1, :cond_2e

    .line 449
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileName:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1500(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_2e
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-eqz p1, :cond_a5

    .line 453
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 454
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "download sucess, remove from failMap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5

    .line 459
    :cond_6a
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_82

    .line 461
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileName:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1600(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_82
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    move-result-object p1

    const/16 p2, 0x67

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "download icon failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;->val$fileUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    return-void
.end method
