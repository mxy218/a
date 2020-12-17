.class Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3$1;
.super Ljava/lang/Object;
.source "ForceTouchSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->peek(Landroid/view/MotionEvent;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;

.field final synthetic val$config:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

.field final synthetic val$fragment:Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)V
    .registers 4

    .line 233
    iput-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3$1;->this$1:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;

    iput-object p2, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3$1;->val$fragment:Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;

    iput-object p3, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3$1;->val$config:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3$1;->val$fragment:Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    .line 238
    sget-object p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "root view is null, return"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v1, 0x4

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3$1;->val$config:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekView:Ljava/lang/ref/WeakReference;

    return-void
.end method
