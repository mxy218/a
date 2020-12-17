.class Lcom/meizu/settings/root/FlymeRootRequestActivity$4;
.super Ljava/lang/Object;
.source "FlymeRootRequestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/root/FlymeRootRequestActivity;->showWarnnigDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/root/FlymeRootRequestActivity;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$4;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 278
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$4;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$500(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 279
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$4;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 280
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$4;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-virtual {p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->finish()V

    .line 282
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$4;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$602(Lcom/meizu/settings/root/FlymeRootRequestActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
