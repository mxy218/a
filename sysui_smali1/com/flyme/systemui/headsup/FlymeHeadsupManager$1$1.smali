.class Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlymeHeadsupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1$1;->this$1:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 169
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1$1;->this$1:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;

    iget-object p1, p1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$000(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 170
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1$1;->this$1:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;

    iget-object p1, p1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$002(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;Z)Z

    .line 171
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1$1;->this$1:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;

    iget-object p1, p1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$200(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1$1;->this$1:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;

    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$100(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_25
    return-void
.end method
