.class Lcom/android/server/policy/FlymeConfirmPasswordView$5$1;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/FlymeConfirmPasswordView$5;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView$5;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/policy/FlymeConfirmPasswordView$5;

    .line 371
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5$1;->this$1:Lcom/android/server/policy/FlymeConfirmPasswordView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5$1;->this$1:Lcom/android/server/policy/FlymeConfirmPasswordView$5;

    iget-object v0, v0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5$1;->this$1:Lcom/android/server/policy/FlymeConfirmPasswordView$5;

    iget-object v1, v1, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$600(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->setTip(Ljava/lang/String;)V

    .line 375
    return-void
.end method
