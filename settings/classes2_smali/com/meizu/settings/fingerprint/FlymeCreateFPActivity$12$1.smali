.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;)V
    .registers 2

    .line 871
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 875
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    .line 878
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$502(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I

    .line 880
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$3400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;)V

    .line 881
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 888
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 889
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->clearAnimation()V

    .line 891
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f120d8a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 892
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p0

    const p1, 0x7f1207f6

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
