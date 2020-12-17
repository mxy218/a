.class Lcom/meizu/settings/root/FlymeRootRequestActivity$6;
.super Ljava/lang/Object;
.source "FlymeRootRequestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$saveStatusBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/meizu/settings/root/FlymeRootRequestActivity;Landroid/widget/CheckBox;)V
    .registers 3

    .line 242
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    iput-object p2, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->val$saveStatusBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 246
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$200(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$302(Lcom/meizu/settings/root/FlymeRootRequestActivity;Z)Z

    .line 249
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1, p2}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$502(Lcom/meizu/settings/root/FlymeRootRequestActivity;Z)Z

    .line 250
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$700(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->val$saveStatusBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 251
    :cond_26
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->access$800(Lcom/meizu/settings/root/FlymeRootRequestActivity;I)V

    .line 253
    :cond_2c
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 254
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;->this$0:Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-virtual {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->finish()V

    return-void
.end method
