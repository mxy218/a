.class Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;
.super Landroid/os/AsyncTask;
.source "FlymeNetworkAccessLicenseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->queryAuthenticityAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 344
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 2

    .line 347
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$800(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 344
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5

    .line 358
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryAuthenticity result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeNetworkAccessLicenseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 364
    :try_start_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "RspCode"

    .line 365
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Result"

    .line 366
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    .line 367
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 368
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p1, v0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$1000(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;Ljava/lang/String;)V

    goto :goto_57

    :cond_3f
    const-string v0, "0001"

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 370
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$1100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_4c} :catch_4d

    goto :goto_57

    :catch_4d
    move-exception p1

    .line 373
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_57

    .line 376
    :cond_52
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$1100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    .line 380
    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 352
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 353
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$900(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)V

    return-void
.end method
