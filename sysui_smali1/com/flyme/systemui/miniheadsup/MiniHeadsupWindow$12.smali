.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V
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

    .line 587
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$12;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 591
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$12;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$600(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 592
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$12;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$600(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;->onHideCallBack()V

    :cond_11
    return-void
.end method
