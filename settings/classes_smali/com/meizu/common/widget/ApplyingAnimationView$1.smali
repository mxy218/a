.class Lcom/meizu/common/widget/ApplyingAnimationView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ApplyingAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ApplyingAnimationView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ApplyingAnimationView;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 256
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_44

    .line 258
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$000(Lcom/meizu/common/widget/ApplyingAnimationView;)Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 259
    iget-object p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_44

    .line 260
    :cond_31
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 261
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$002(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z

    .line 262
    iget-object p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {p0, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$202(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z

    :cond_44
    :goto_44
    return-void
.end method
