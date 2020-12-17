.class Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;
.super Landroid/os/AsyncTask;
.source "ExternalMediaFormatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$1;)V
    .registers 3

    .line 187
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;-><init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Exception;
    .registers 3

    .line 198
    :try_start_0
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$500(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)Landroid/os/storage/StorageManager;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    const/4 p0, 0x0

    return-object p0

    :catch_e
    move-exception p0

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FormatTask doInBackground e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExternalMediaFormatActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 187
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .registers 5

    .line 208
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$600(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    if-eqz p1, :cond_18

    .line 211
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$700(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0xa100069

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_18
    const-string p1, "ExternalMediaFormatActivity"

    const-string v0, "FormatTask onPostExecute finish"

    .line 214
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 187
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$400(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    .line 192
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
