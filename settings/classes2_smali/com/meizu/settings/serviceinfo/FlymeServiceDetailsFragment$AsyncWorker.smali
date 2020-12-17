.class public Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;
.super Landroid/os/AsyncTask;
.source "FlymeServiceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AsyncWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequestType:I

.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Landroid/content/Context;)V
    .registers 3

    .line 241
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
    .registers 7

    const/4 v0, 0x0

    .line 248
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->mRequestType:I

    .line 249
    iget p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->mRequestType:I

    if-eqz p1, :cond_84

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7d

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_17

    if-eq p1, v1, :cond_17

    goto :goto_82

    .line 259
    :cond_17
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$800(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$502(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    .line 260
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 261
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getSuggest()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$902(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getCStatus()I

    move-result v3

    invoke-static {p1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1002(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;I)I

    :cond_42
    const-wide/16 v3, 0x190

    .line 265
    :try_start_44
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_47

    .line 269
    :catch_47
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1100(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 270
    iget p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->mRequestType:I

    if-ne p1, v2, :cond_5e

    .line 271
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1200(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;II)V

    goto :goto_82

    :cond_5e
    if-ne p1, v1, :cond_82

    .line 273
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1200(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;II)V

    goto :goto_82

    .line 277
    :cond_68
    iget p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->mRequestType:I

    if-ne p1, v2, :cond_73

    .line 278
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1200(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;II)V

    goto :goto_82

    :cond_73
    if-ne p1, v1, :cond_82

    .line 281
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1200(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;II)V

    goto :goto_82

    .line 255
    :cond_7d
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$700(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    :cond_82
    :goto_82
    const/4 p1, 0x0

    goto :goto_93

    .line 251
    :cond_84
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$400(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {v0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$600(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$502(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    .line 289
    :goto_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeServiceDetailsFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$500(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 235
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->doInBackground([Ljava/lang/Integer;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V
    .registers 3

    .line 295
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->mRequestType:I

    if-nez v0, :cond_9

    .line 296
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1300(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 235
    check-cast p1, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$AsyncWorker;->onPostExecute(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    return-void
.end method
