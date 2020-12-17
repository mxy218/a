.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;
.super Ljava/lang/Object;
.source "WaveWakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 661
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 665
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 667
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2500(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;)V

    .line 668
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object v0, v0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    .line 669
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    .line 670
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/high16 v1, 0x6c000000

    .line 671
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 673
    new-instance v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object v2, v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    .line 674
    invoke-static {v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 675
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$9;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
