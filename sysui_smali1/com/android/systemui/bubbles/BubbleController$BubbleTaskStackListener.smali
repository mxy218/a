.class Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "BubbleController.java"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubbleTaskStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .registers 2

    .line 903
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V
    .registers 3

    .line 903
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    return-void
.end method


# virtual methods
.method public onActivityLaunchOnSecondaryDisplayRerouted()V
    .registers 2

    .line 916
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 917
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_12
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    .line 923
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_20

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$700(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_20

    .line 924
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_20
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    .line 907
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_22

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez p1, :cond_22

    .line 908
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpansionAnimating()Z

    move-result p1

    if-nez p1, :cond_22

    .line 909
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_22
    return-void
.end method
