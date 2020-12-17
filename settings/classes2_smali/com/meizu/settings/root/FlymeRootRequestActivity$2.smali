.class Lcom/meizu/settings/root/FlymeRootRequestActivity$2;
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

    .line 196
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$2;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 199
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$2;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$200(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$2;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$302(Lcom/meizu/settings/root/FlymeRootRequestActivity;Z)Z

    .line 201
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$2;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 202
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$2;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1, p2}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$002(Lcom/meizu/settings/root/FlymeRootRequestActivity;Z)Z

    .line 203
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$2;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-virtual {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->finish()V

    return-void
.end method
