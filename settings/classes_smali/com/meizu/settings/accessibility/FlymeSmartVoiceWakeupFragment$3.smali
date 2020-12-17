.class Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;
.super Ljava/lang/Object;
.source "FlymeSmartVoiceWakeupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->initView(Landroid/view/View;)V
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

    .line 111
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 116
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/FileOps;->calculate(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_12

    .line 117
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->access$100(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V

    goto :goto_2f

    .line 119
    :cond_12
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->access$000(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;I)V

    .line 120
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/meizu/settings/voicewakeup/FileOps;->setCurrentSelectedIndex(Landroid/content/Context;I)V

    .line 122
    invoke-static {}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->getInstance()Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    move-result-object p1

    .line 123
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->cvqFromDriverSuspend(Landroid/content/Context;ZZ)V

    :goto_2f
    return-void
.end method
