.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$15;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->prepareAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 917
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$15;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"  # Landroid/animation/Animator;

    .line 947
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"  # Landroid/animation/Animator;

    .line 940
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$15;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$700(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 941
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"  # Landroid/animation/Animator;

    .line 929
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"  # Landroid/animation/Animator;

    .line 923
    return-void
.end method
