.class Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$1;
.super Landroid/database/ContentObserver;
.source "FlymeSmartTouchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;Landroid/os/Handler;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 50
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->access$000(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 53
    :cond_9
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->access$100(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-static {v0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->access$000(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_smart_touch_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    invoke-virtual {p1, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 55
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)V

    return-void
.end method
