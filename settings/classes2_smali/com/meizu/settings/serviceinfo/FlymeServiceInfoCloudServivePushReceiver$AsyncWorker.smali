.class public Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;
.super Landroid/os/AsyncTask;
.source "FlymeServiceInfoCloudServivePushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList<",
        "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSN:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;Landroid/content/Context;)V
    .registers 3

    .line 103
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 97
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->doInBackground([Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mSN:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mSN:Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a4

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    const-string v1, "act=list"

    .line 116
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mSN:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->makeURLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_27
    if-eqz v0, :cond_a4

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a4

    .line 123
    :try_start_2f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "returnCode"

    .line 124
    invoke-static {v1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "200"

    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string v0, "returnValue"

    .line 128
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_48} :catch_a0

    :try_start_48
    const-string v1, "list"

    .line 135
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    :goto_4f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a4

    .line 137
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "fnumber"

    .line 138
    invoke-static {v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "foptime"

    .line 140
    invoke-static {v2, v4}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cstatus"

    .line 142
    invoke-static {v2, v5}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->SafeGetJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    const-string v5, "FlymeServiceInfoCloudServivePushReceiver"

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fnumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", foptime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", cstatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_9d

    .line 149
    new-instance v5, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    iget-object v6, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mSN:Ljava/lang/String;

    invoke-direct {v5, v3, v4, v2, v6}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_9d} :catch_a4

    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :catch_a0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :catch_a4
    :cond_a4
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 97
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "FlymeServiceInfoCloudServivePushReceiver"

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute, new record count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    add-int/lit8 v2, v1, -0x1

    .line 174
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    .line 175
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getFixNumber()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mSN:Ljava/lang/String;

    .line 175
    invoke-static {v2, v3, v1, p1, v4}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->access$000(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 178
    :cond_39
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;

    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mSN:Ljava/lang/String;

    invoke-static {p1, v2, v1, v0, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->access$000(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_43

    goto :goto_50

    :catch_43
    move-exception p1

    .line 181
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;->mSN:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->access$000(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_50
    return-void
.end method
