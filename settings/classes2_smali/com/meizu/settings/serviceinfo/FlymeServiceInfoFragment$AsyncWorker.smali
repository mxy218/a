.class public Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;
.super Landroid/os/AsyncTask;
.source "FlymeServiceInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;Landroid/content/Context;)V
    .registers 3

    .line 222
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 218
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 229
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, 0x190

    const/4 v4, 0x0

    if-nez v1, :cond_39

    .line 230
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$000(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Z

    move-result p1

    if-nez p1, :cond_15

    return-object v4

    :cond_15
    :try_start_15
    const-string p1, "act=list"

    .line 234
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    .line 235
    invoke-static {v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$100(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {p1, v0, v4}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->makeURLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoHttpInvoker;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    :goto_2a
    :try_start_2a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    :goto_32
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-static {p0, v4}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$200(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;Ljava/lang/String;)V

    goto/16 :goto_a7

    .line 245
    :cond_39
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v1, v5, :cond_4b

    aget-object v1, p1, v0

    .line 246
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_a7

    .line 247
    :cond_4b
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-static {v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$300(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mCorInfos:Ljava/util/ArrayList;

    .line 248
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-static {v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$400(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFixRecords:Ljava/util/ArrayList;

    .line 250
    :try_start_5b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    :goto_63
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    iget-object v2, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mCorInfos:Ljava/util/ArrayList;

    if-nez v2, :cond_8a

    iget-object v1, v1, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->mFixRecords:Ljava/util/ArrayList;

    if-nez v1, :cond_8a

    .line 255
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_7b

    .line 256
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-static {p0, v6, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;II)V

    goto :goto_a7

    .line 257
    :cond_7b
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_a7

    .line 258
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    const/4 p1, 0x6

    invoke-static {p0, p1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;II)V

    goto :goto_a7

    .line 263
    :cond_8a
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_99

    .line 264
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    const/4 p1, 0x4

    invoke-static {p0, p1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;II)V

    goto :goto_a7

    .line 265
    :cond_99
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_a7

    .line 266
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    const/4 p1, 0x7

    invoke-static {p0, p1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;II)V

    :cond_a7
    :goto_a7
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 218
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$AsyncWorker;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostExecute, result = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeServiceInfoFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
