.class Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;
.super Ljava/lang/Object;
.source "FlymeHeadsupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/headsup/FlymeHeadsupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$100(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$300(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1$1;-><init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
