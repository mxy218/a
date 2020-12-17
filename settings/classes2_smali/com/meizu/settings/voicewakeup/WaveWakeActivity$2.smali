.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$2;
.super Ljava/lang/Object;
.source "WaveWakeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->showBackDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$2;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 164
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 165
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$2;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
