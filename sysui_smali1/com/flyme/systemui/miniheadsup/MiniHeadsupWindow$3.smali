.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChangeState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 434
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$100(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$100(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 436
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$202(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Z)Z

    return-void
.end method
