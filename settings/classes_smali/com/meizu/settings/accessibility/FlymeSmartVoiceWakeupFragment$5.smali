.class Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$5;
.super Ljava/lang/Object;
.source "FlymeSmartVoiceWakeupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->initSmartVoiceSwitch(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$5;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$5;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->access$300(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)Lcom/meizu/common/widget/Switch;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$5;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-static {v0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->access$300(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)Lcom/meizu/common/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$5;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V

    return-void
.end method
