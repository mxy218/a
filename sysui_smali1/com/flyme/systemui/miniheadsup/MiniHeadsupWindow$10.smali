.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateSnap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V
    .registers 3

    .line 538
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->val$startY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 541
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->val$startY:F

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
