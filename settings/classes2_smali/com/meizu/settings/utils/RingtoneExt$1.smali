.class Lcom/meizu/settings/utils/RingtoneExt$1;
.super Ljava/lang/Object;
.source "RingtoneExt.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/RingtoneExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/RingtoneExt;


# direct methods
.method constructor <init>(Lcom/meizu/settings/utils/RingtoneExt;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt$1;->this$0:Lcom/meizu/settings/utils/RingtoneExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    goto :goto_18

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt$1;->this$0:Lcom/meizu/settings/utils/RingtoneExt;

    invoke-static {p1}, Lcom/meizu/settings/utils/RingtoneExt;->access$000(Lcom/meizu/settings/utils/RingtoneExt;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/utils/RingtoneExt$1;->this$0:Lcom/meizu/settings/utils/RingtoneExt;

    invoke-static {p0}, Lcom/meizu/settings/utils/RingtoneExt;->access$000(Lcom/meizu/settings/utils/RingtoneExt;)Landroid/media/Ringtone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    :cond_18
    :goto_18
    return-void
.end method
