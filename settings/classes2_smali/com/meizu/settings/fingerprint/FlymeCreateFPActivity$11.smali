.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$11;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startTipsEnrollFingerSideLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 2

    .line 855
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$11;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 858
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$11;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1207f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 859
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$11;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$11;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$3400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 860
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
