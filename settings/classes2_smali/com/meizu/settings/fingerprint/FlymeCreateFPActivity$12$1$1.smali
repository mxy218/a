.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1$1;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;)V
    .registers 2

    .line 881
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1$1;->this$2:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1$1;->this$2:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1$1;->this$2:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 886
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1$1;->this$2:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->clearAnimation()V

    return-void
.end method
