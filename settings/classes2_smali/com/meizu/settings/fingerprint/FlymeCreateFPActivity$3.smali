.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "FlymeCreateFPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->registerShowMultiTaskReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

.field final synthetic val$actionCancelGestureView:Ljava/lang/String;

.field final synthetic val$actionShowGestureView:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 265
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;->val$actionCancelGestureView:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;->val$actionShowGestureView:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 269
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;->val$actionCancelGestureView:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 270
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->onResume()V

    goto :goto_23

    .line 271
    :cond_12
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;->val$actionShowGestureView:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 272
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->onPause()V

    :cond_23
    :goto_23
    return-void
.end method
