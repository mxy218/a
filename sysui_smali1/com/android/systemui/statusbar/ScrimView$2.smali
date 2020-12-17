.class Lcom/android/systemui/statusbar/ScrimView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ScrimView;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView$2;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView$2;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->access$202(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
