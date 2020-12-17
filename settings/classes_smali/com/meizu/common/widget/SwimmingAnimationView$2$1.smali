.class Lcom/meizu/common/widget/SwimmingAnimationView$2$1;
.super Ljava/lang/Object;
.source "SwimmingAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SwimmingAnimationView$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/SwimmingAnimationView$2;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SwimmingAnimationView$2;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView$2$1;->this$1:Lcom/meizu/common/widget/SwimmingAnimationView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 297
    iget-object p0, p0, Lcom/meizu/common/widget/SwimmingAnimationView$2$1;->this$1:Lcom/meizu/common/widget/SwimmingAnimationView$2;

    iget-object p0, p0, Lcom/meizu/common/widget/SwimmingAnimationView$2;->this$0:Lcom/meizu/common/widget/SwimmingAnimationView;

    invoke-static {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->access$300(Lcom/meizu/common/widget/SwimmingAnimationView;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
