.class Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;
.super Ljava/lang/Object;
.source "HomekeyHapicFeedbackThemeFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .line 142
    iget-object p3, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$500(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;I)I

    move-result p3

    if-eq p3, p2, :cond_b

    const/4 p3, 0x1

    goto :goto_c

    :cond_b
    move p3, v0

    .line 144
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume onProgressChanged seekBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " progress = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",progressChanged:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HomekeyHapicFeedbackThemeFragment"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p0, v0, p2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$600(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;II)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 130
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$400(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 131
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$400(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$400(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    return-void
.end method
