.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$16;
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

    .line 951
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$16;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"  # Landroid/animation/Animator;

    .line 965
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"  # Landroid/animation/Animator;

    .line 959
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$16;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 960
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"  # Landroid/animation/Animator;

    .line 970
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"  # Landroid/animation/Animator;

    .line 955
    return-void
.end method
