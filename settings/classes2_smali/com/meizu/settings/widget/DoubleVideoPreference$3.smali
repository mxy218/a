.class Lcom/meizu/settings/widget/DoubleVideoPreference$3;
.super Ljava/lang/Thread;
.source "DoubleVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/DoubleVideoPreference;->tryStartVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$3;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$3;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-static {v0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->access$000(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$3;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-static {v0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->access$000(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 225
    iget-object p0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$3;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->access$000(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_1d
    return-void
.end method
