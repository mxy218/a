.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;
.super Landroid/os/AsyncTask;
.source "WaveWakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrainingSequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
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

    .line 325
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;)V
    .registers 3

    .line 325
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 10

    const-string v0, "temp.bin"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, -0x1

    .line 327
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 331
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mode:Ljava/lang/String;

    iget-object v2, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->trainingmode:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 332
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->setVoiceSenseTrainingRoutes()I

    .line 334
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system/etc/firmware/audience/cvqmodels"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "adnc_cvq_training_bkg.bin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v4, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    invoke-virtual {v4, v2, v5}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->setKeyword(Ljava/lang/String;I)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v2

    .line 340
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    :goto_45
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->enterVSTrainingMode()I

    .line 344
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->trainingmode:Ljava/lang/String;

    iput-object v4, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mode:Ljava/lang/String;

    .line 348
    :cond_50
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    const-string v4, ""

    iput-object v4, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->status:Ljava/lang/String;

    .line 352
    :try_start_56
    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5c} :catch_74

    const-string v4, "Voice Sense Training Record"

    if-ne v2, v1, :cond_6a

    .line 353
    :try_start_60
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v2, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    const-string v6, "Keyword_1"

    invoke-virtual {v2, v4, v6}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 356
    :cond_6a
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v2, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    const-string v6, "Previous Keyword"

    invoke-virtual {v2, v4, v6}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception v2

    .line 360
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_78
    move v2, v5

    .line 365
    :goto_79
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v4, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->exitcalled:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_d6

    const-wide/16 v6, 0xc8

    .line 368
    :try_start_85
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception v4

    .line 370
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8d
    add-int/lit16 v2, v2, 0xc8

    new-array v4, v1, [Ljava/lang/Integer;

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 375
    :try_start_9a
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v6, v6, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    const-string v7, "Voice Sense Training Status"

    invoke-virtual {v6, v7}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->status:Ljava/lang/String;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception v4

    .line 377
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    :goto_ad
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v4, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Training status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v7, v7, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/meizu/settings/voicewakeup/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v4, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->status:Ljava/lang/String;

    const-string v6, "busy"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    goto :goto_79

    .line 387
    :cond_d6
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v2, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->status:Ljava/lang/String;

    const-string v4, "Success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_146

    .line 389
    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_147

    .line 390
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 395
    :try_start_ef
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v4, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_10f} :catch_131

    .line 398
    :try_start_10f
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v4, v4, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_10f .. :try_end_11a} :catch_120
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_11a} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_11a} :catch_131

    goto :goto_124

    :catch_11b
    move-exception v0

    .line 407
    :try_start_11c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_124

    :catch_120
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 410
    :goto_124
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->getKeyword(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_130} :catch_131

    goto :goto_13e

    :catch_131
    move-exception v0

    .line 412
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v2, "Failed to get VoiceSense Keyword"

    invoke-static {p0, v2}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    :goto_13e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_147

    move v1, v3

    goto :goto_147

    :cond_146
    const/4 v1, 0x2

    .line 424
    :cond_147
    :goto_147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 325
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1100(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget v1, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_10c

    .line 454
    :try_start_14
    iget-object v1, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->iVSService:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    const-string v5, "Voice Sense Training Model Length"

    .line 455
    invoke-virtual {v1, v5}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoiceSense Phonic Length: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v5, v5, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3a} :catch_3b

    goto :goto_44

    .line 458
    :catch_3b
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "Exception raised during getting value of VoiceSense Phonic Length"

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_44
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "other error."

    if-nez v0, :cond_100

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    const-string v5, "null"

    .line 462
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 463
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_82

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    .line 464
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x14

    if-gt v0, v5, :cond_82

    .line 465
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "VoiceSense Phonic Length is Short."

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->onError(I)V

    goto/16 :goto_10c

    .line 467
    :cond_82
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x15

    if-lt v0, v5, :cond_a9

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x3e

    if-gt v0, v5, :cond_a9

    .line 469
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "VoiceSense Phonic Length is OK."

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0, v4}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->onPartSuccess(I)V

    goto :goto_10c

    .line 471
    :cond_a9
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x3f

    const/16 v6, 0x4b

    if-lt v0, v5, :cond_d0

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    .line 472
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v6, :cond_d0

    .line 473
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "VoiceSense Phonic Length is Long."

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0, v4}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->onError(I)V

    goto :goto_10c

    .line 475
    :cond_d0
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_f3

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->phonic_length:Ljava/lang/String;

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v6, :cond_f3

    .line 477
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v1, "Invalid Phonic Length."

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0, v4}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->onError(I)V

    goto :goto_10c

    .line 480
    :cond_f3
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0, v3}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->onError(I)V

    goto :goto_10c

    .line 484
    :cond_100
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0, v3}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->onError(I)V

    .line 490
    :cond_10c
    :goto_10c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_33f

    .line 491
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    if-ne v0, v4, :cond_168

    .line 492
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v6, 0x7f121817

    invoke-static {p1, v0, v2, v6}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 494
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    .line 496
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1500(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$1;

    invoke-direct {v2, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$1;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    const v6, 0x7f010067

    .line 495
    invoke-static {v0, p1, v6, v2}, Lcom/meizu/settings/voicewakeup/AnimationUtil;->loadAnimationAndListener(Landroid/content/Context;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 504
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    .line 505
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1600(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$2;

    invoke-direct {v2, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$2;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    .line 504
    invoke-static {v0, p1, v6, v2}, Lcom/meizu/settings/voicewakeup/AnimationUtil;->loadAnimationAndListener(Landroid/content/Context;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 513
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    .line 514
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1700(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$3;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    .line 513
    invoke-static {v0, p1, v6, v2}, Lcom/meizu/settings/voicewakeup/AnimationUtil;->loadAnimationAndListener(Landroid/content/Context;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_210

    :cond_168
    const/4 v6, 0x2

    const v7, 0x7f121814

    const v8, 0x7f010068

    if-ne v0, v6, :cond_1aa

    .line 523
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v9, v6, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    new-array v10, v4, [Ljava/lang/Object;

    iget v6, v6, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    .line 525
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    .line 523
    invoke-virtual {v9, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v0, v2, v6}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 526
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1900(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    .line 528
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1900(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$4;

    invoke-direct {v2, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$4;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    .line 527
    invoke-static {v0, p1, v8, v2}, Lcom/meizu/settings/voicewakeup/AnimationUtil;->loadAnimationAndListener(Landroid/content/Context;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_210

    :cond_1aa
    if-ne v0, v2, :cond_1e5

    .line 537
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v9, v6, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    new-array v10, v4, [Ljava/lang/Object;

    iget v6, v6, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    .line 539
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    .line 537
    invoke-virtual {v9, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v0, v2, v6}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    .line 542
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$5;

    invoke-direct {v2, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$5;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    .line 541
    invoke-static {v0, p1, v8, v2}, Lcom/meizu/settings/voicewakeup/AnimationUtil;->loadAnimationAndListener(Landroid/content/Context;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_210

    :cond_1e5
    if-ne v0, v3, :cond_210

    .line 551
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v6, 0x7f121816

    invoke-static {p1, v0, v2, v6}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 553
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2100(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    .line 555
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2100(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$6;

    invoke-direct {v2, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$6;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    .line 554
    invoke-static {v0, p1, v8, v2}, Lcom/meizu/settings/voicewakeup/AnimationUtil;->loadAnimationAndListener(Landroid/content/Context;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 564
    :cond_210
    :goto_210
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    .line 565
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    .line 567
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    if-le v0, v3, :cond_33e

    .line 568
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f130335

    invoke-direct {v0, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f12180d

    .line 572
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f121809

    .line 574
    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;

    invoke-direct {v2, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f121808

    .line 623
    new-instance v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$8;

    invoke-direct {v2, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$8;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 633
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2202(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 634
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 637
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 639
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object p1

    const v1, -0x777778

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 640
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, -0x22b1b5

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 644
    :try_start_290
    const-class p1, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    .line 645
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 646
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 647
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f080331

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_2ab} :catch_2ab

    .line 651
    :catch_2ab
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v1, v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f121810

    .line 652
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 653
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2402(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 654
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 655
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setAutoShowSoftInput(Z)V

    .line 656
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 657
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 659
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    .line 661
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;

    invoke-direct {v0, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f12181d

    invoke-static {p1, v0, v1, v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 680
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mode:Ljava/lang/String;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->trainingmode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33e

    .line 681
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->resetVoiceSenseTrainingRoutes()I

    .line 682
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->exitVSTrainingMode()I

    .line 683
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    const-string p1, ""

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mode:Ljava/lang/String;

    :cond_33e
    return-void

    .line 687
    :cond_33f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-wide/16 v2, 0x32

    if-ne p1, v1, :cond_373

    .line 688
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v6, 0x7f12180c

    invoke-static {p1, v0, v1, v6}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 690
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iput v4, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    .line 691
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 692
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    .line 693
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Vibrator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    .line 696
    :cond_373
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$800(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V

    .line 698
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget v0, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    if-eq v0, v4, :cond_397

    .line 699
    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x7f121815

    invoke-static {p1, v0, v1, v4}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2600(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 702
    :cond_397
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Vibrator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 325
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 5

    const/4 v0, 0x0

    .line 433
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_c

    goto :goto_37

    .line 435
    :cond_c
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    .line 436
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    const v0, 0x7f121811

    .line 437
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 438
    :cond_28
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_32

    goto :goto_37

    .line 440
    :cond_32
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    :goto_37
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 325
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
