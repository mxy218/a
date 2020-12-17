.class Lcom/meizu/settings/root/FlymeRootRequestActivity$3;
.super Ljava/lang/Object;
.source "FlymeRootRequestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/root/FlymeRootRequestActivity;->showEnableRootPermissionDialog()V
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

    .line 185
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$3;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$3;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$100(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 190
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$3;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$100(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 192
    :cond_11
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$3;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$400(Lcom/meizu/settings/root/FlymeRootRequestActivity;)V

    .line 193
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$3;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$002(Lcom/meizu/settings/root/FlymeRootRequestActivity;Z)Z

    return-void
.end method
