.class Lcom/android/server/policy/FlymeConfirmPasswordView$4;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordView.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;->startCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 349
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "r"  # Ljava/lang/Runnable;

    .line 352
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "FlymeConfirmPasswordView-pool-thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 354
    return-object v0
.end method
