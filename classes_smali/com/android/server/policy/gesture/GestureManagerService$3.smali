.class Lcom/android/server/policy/gesture/GestureManagerService$3;
.super Ljava/lang/Object;
.source "GestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/gesture/GestureManagerService;->triggerGesture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gesture/GestureManagerService;

.field final synthetic val$gestureType:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/GestureManagerService;I)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 294
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureManagerService$3;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    iput p2, p0, Lcom/android/server/policy/gesture/GestureManagerService$3;->val$gestureType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService$3;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    iget v1, p0, Lcom/android/server/policy/gesture/GestureManagerService$3;->val$gestureType:I

    invoke-static {v0, v1}, Lcom/android/server/policy/gesture/GestureManagerService;->access$800(Lcom/android/server/policy/gesture/GestureManagerService;I)V

    .line 298
    return-void
.end method
