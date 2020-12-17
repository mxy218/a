.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$4;
.super Ljava/lang/Object;
.source "WaveWakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->showKeyBoardDelayed(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 721
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$4;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$4;->val$text:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 725
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$4;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$4;->val$text:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2700(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;)V

    return-void
.end method
