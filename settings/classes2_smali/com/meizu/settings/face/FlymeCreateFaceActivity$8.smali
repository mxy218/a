.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->showWarnDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

.field final synthetic val$cancelReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;)V
    .registers 3

    .line 581
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    iput-object p2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;->val$cancelReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 584
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    .line 585
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 586
    iget-object p2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;->val$cancelReason:Ljava/lang/String;

    const-string v0, "cancel_reason"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    iget-object p2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 588
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$8;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
