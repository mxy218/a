.class Lcom/flyme/systemui/fullscreen/views/EdgeBackView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EdgeBackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->triggerBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fullscreen/views/EdgeBackView;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$2;->this$0:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 333
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$2;->this$0:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
