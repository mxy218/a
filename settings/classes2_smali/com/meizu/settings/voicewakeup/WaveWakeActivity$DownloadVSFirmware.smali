.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;
.super Landroid/os/AsyncTask;
.source "WaveWakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadVSFirmware"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;)V
    .registers 3

    .line 250
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 9

    const/4 p1, -0x1

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 255
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    invoke-static {}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$600()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    cmp-long v4, v0, v2

    if-gez v4, :cond_30

    .line 259
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v4, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diff= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 263
    :cond_30
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    sget-object v1, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE:Ljava/lang/String;

    sget-object v2, Lcom/meizu/settings/voicewakeup/Constants;->VS_POWER_STATE_OVERLAY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    goto :goto_4e

    :catch_41
    move-exception v0

    .line 269
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v1, v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v2, "Failed to change the power state"

    invoke-static {v1, v2}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    :goto_4e
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v1, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mode:Ljava/lang/String;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->trainingmode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 275
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->setVoiceSenseTrainingRoutes()I

    .line 277
    :try_start_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system/etc/firmware/audience/cvqmodels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adnc_cvq_training_bkg.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v1, v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->setKeyword(Ljava/lang/String;I)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    :goto_84
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->enterVSTrainingMode()I

    .line 287
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->trainingmode:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mode:Ljava/lang/String;

    :cond_8f
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 250
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 3

    .line 301
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v0, "on post execute firmware download done"

    invoke-static {p1, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$900(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 250
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 295
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 296
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$700(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    .line 297
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$DownloadVSFirmware;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    return-void
.end method
