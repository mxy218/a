.class final Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
.super Ljava/lang/Object;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gesture/GestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field mCallback:Landroid/view/IGestureCallback;

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/policy/gesture/GestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/GestureManagerService;Landroid/view/IGestureCallback;Ljava/lang/String;)V
    .registers 4
    .param p2, "callback"  # Landroid/view/IGestureCallback;
    .param p3, "tag"  # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p3, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;->mTag:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;->mCallback:Landroid/view/IGestureCallback;

    .line 105
    return-void
.end method
