.class Lcom/android/server/wm/RecentsAnimationController$1;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/wm/RecentsAnimationController;

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method

.method private continueDeferredCancel()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppTransition;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 158
    return-void

    .line 161
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->access$202(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationWithScreenshot(Z)V

    .line 165
    :cond_2b
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 2
    .param p1, "transit"  # I

    .line 152
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController$1;->continueDeferredCancel()V

    .line 153
    return-void
.end method

.method public onAppTransitionStartingLocked(IJJJ)I
    .registers 9
    .param p1, "transit"  # I
    .param p2, "duration"  # J
    .param p4, "statusBarAnimationStartTime"  # J
    .param p6, "statusBarAnimationDuration"  # J

    .line 146
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController$1;->continueDeferredCancel()V

    .line 147
    const/4 v0, 0x0

    return v0
.end method
