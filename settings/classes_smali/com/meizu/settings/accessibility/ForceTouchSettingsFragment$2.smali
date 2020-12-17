.class Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$2;
.super Ljava/lang/Object;
.source "ForceTouchSettingsFragment.java"

# interfaces
.implements Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$2;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V
    .registers 6

    .line 91
    sget-object v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged seekBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " progress = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$2;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-static {p0, p2}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->access$200(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;I)V

    return-void
.end method

.method public onProgressDragging(Lcom/meizu/common/widget/EnhanceSeekBar;I)V
    .registers 3

    return-void
.end method

.method public onStartTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .registers 2

    return-void
.end method
