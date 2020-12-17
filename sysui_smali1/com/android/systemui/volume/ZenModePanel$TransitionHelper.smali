.class final Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransitionHelper"
.end annotation


# instance fields
.field private mPendingUpdateWidgets:Z

.field private mTransitioning:Z

.field private final mTransitioningViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .registers 2

    .line 1013
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V
    .registers 3

    .line 1013
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method private updateTransitioning()V
    .registers 4

    .line 1064
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v0

    .line 1065
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    if-ne v1, v0, :cond_9

    return-void

    .line 1066
    :cond_9
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    .line 1067
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionHelper mTransitioning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_2d
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    if-nez v0, :cond_42

    .line 1069
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    if-eqz v0, :cond_3f

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1500(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    :cond_3f
    const/4 v0, 0x0

    .line 1072
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 1021
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    return-void
.end method

.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 1049
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1050
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->updateTransitioning()V

    return-void
.end method

.method public isTransitioning()Z
    .registers 1

    .line 1036
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public pendingUpdateWidgets()V
    .registers 2

    const/4 v0, 0x1

    .line 1032
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    return-void
.end method

.method public run()V
    .registers 4

    .line 1055
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionHelper run mPendingUpdateWidgets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_22
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    if-eqz v0, :cond_2b

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1600(Lcom/android/systemui/volume/ZenModePanel;)V

    :cond_2b
    const/4 v0, 0x0

    .line 1060
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 1042
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1043
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->updateTransitioning()V

    return-void
.end method
