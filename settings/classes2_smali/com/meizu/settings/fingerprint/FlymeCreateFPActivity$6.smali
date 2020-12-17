.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->createTextAnimation()V
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

    .line 724
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 743
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 744
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .line 732
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$6;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
