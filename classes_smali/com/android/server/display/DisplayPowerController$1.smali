.class Lcom/android/server/display/DisplayPowerController$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 720
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 733
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 726
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)V

    .line 727
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 730
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 723
    return-void
.end method
