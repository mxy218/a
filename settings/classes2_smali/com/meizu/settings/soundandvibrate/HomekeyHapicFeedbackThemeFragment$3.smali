.class Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;
.super Ljava/lang/Object;
.source "HomekeyHapicFeedbackThemeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 150
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 153
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$500(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;I)I

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0340

    if-ne v2, v3, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 156
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0a0341

    if-ne p1, v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    :goto_1e
    if-ltz v0, :cond_44

    const/16 p1, 0x3c

    if-gt v0, p1, :cond_44

    .line 160
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1, v1, v0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$600(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;II)V

    .line 161
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$400(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 162
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$400(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$400(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_44
    return-void
.end method
