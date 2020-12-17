.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$7;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startHeadTextAnimation(I)V
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

    .line 769
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$7;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 781
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$7;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$7;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$3100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$7;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$7;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$3200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/animation/AnimationSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
