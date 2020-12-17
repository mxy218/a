.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;
.super Ljava/lang/Object;
.source "WaveWakeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;


# direct methods
.method constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 578
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 579
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 580
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f12180a

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 583
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 586
    :cond_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userkw"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/FileOps;->getfilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 588
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object v1, v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v1, v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 589
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 592
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object v2, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object v2, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    .line 594
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "temp.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 597
    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 598
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 599
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 600
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object v2, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    const-string v3, "temp"

    invoke-static {v2, v3}, Lcom/meizu/settings/voicewakeup/FileOps;->deleteOtherUserKeyWords(Landroid/content/Context;Ljava/lang/String;)Z

    .line 603
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_b8

    .line 605
    :cond_aa
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 606
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    .line 608
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 606
    invoke-static {p1, p2}, Lcom/meizu/settings/voicewakeup/FileOps;->deleteOtherUserKeyWords(Landroid/content/Context;Ljava/lang/String;)Z

    .line 611
    :cond_b8
    :goto_b8
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1, v1}, Lcom/meizu/settings/voicewakeup/FileOps;->setCurrentSelectedIndex(Landroid/content/Context;I)V

    .line 615
    invoke-static {}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->getInstance()Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    move-result-object p1

    .line 616
    iget-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p2, p2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object p2, p2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0, v0}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->cvqFromDriverSuspend(Landroid/content/Context;ZZ)V

    .line 618
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 619
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 620
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$7;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
