.class final Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;
.super Landroid/os/Handler;
.source "HomekeyHapicFeedbackThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Landroid/os/Looper;)V
    .registers 3

    .line 487
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    .line 488
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 493
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    .line 507
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid SeekBarVolumizer message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HomekeyHapicFeedbackThemeFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 504
    :cond_24
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p0, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$1000(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Z)V

    goto :goto_3b

    .line 498
    :cond_2a
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$900(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V

    .line 500
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$1000(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Z)V

    goto :goto_3b

    .line 495
    :cond_36
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$800(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V

    :goto_3b
    return-void
.end method
