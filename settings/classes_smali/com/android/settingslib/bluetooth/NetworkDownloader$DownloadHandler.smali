.class Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;
.super Landroid/os/Handler;
.source "NetworkDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/NetworkDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/NetworkDownloader;Landroid/os/Looper;)V
    .registers 3

    .line 154
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    .line 155
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "devices.xml"

    const/4 v2, 0x5

    packed-switch p1, :pswitch_data_d6

    goto/16 :goto_d5

    .line 174
    :pswitch_22  #0x68
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$200(Lcom/android/settingslib/bluetooth/NetworkDownloader;)I

    move-result p1

    if-ge p1, v2, :cond_31

    .line 175
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$400(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    goto/16 :goto_d5

    .line 177
    :cond_31
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$500(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    goto/16 :goto_d5

    .line 194
    :pswitch_38  #0x67
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-eqz p1, :cond_d5

    .line 195
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)I

    move-result p1

    if-ge p1, v2, :cond_58

    .line 196
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$108(Lcom/android/settingslib/bluetooth/NetworkDownloader;)I

    .line 197
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$1000(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    goto/16 :goto_d5

    .line 199
    :cond_58
    sget-object p1, Lcom/android/settingslib/bluetooth/XmlReader;->XML_FILE_PATH:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/Util;->deleteFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete xml file ret: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mUrlFailMap.size(): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 166
    :pswitch_85  #0x66, 0x69
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$002(Lcom/android/settingslib/bluetooth/NetworkDownloader;I)I

    .line 167
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$102(Lcom/android/settingslib/bluetooth/NetworkDownloader;I)I

    .line 168
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$202(Lcom/android/settingslib/bluetooth/NetworkDownloader;I)I

    .line 169
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 170
    sget-object p1, Lcom/android/settingslib/bluetooth/XmlReader;->XML_FILE_PATH:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->deleteUnAvailableXmlFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$400(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    goto :goto_d5

    .line 181
    :pswitch_a9  #0x65
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$000(Lcom/android/settingslib/bluetooth/NetworkDownloader;)I

    move-result p1

    if-ge p1, v2, :cond_b7

    .line 182
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$600(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    goto :goto_d5

    .line 184
    :cond_b7
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$500(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    goto :goto_d5

    .line 188
    :pswitch_bd  #0x64
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$700(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/XmlReader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/XmlReader;->parseXmlToHashMap()V

    .line 189
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$800(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    .line 190
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$900(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    .line 191
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;->this$0:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->access$500(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    :cond_d5
    :goto_d5
    return-void

    :pswitch_data_d6
    .packed-switch 0x64
        :pswitch_bd  #00000064
        :pswitch_a9  #00000065
        :pswitch_85  #00000066
        :pswitch_38  #00000067
        :pswitch_22  #00000068
        :pswitch_85  #00000069
    .end packed-switch
.end method
