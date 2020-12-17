.class Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$1;
.super Landroid/database/ContentObserver;
.source "ForceTouchSettingsFragment.java"


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
.method constructor <init>(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;Landroid/os/Handler;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$1;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 66
    sget-object v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uri = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$1;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->access$000(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)V

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$1;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->access$100(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)V

    return-void
.end method
