.class Lcom/android/server/policy/FlymeConfirmPasswordView$5;
.super Ljava/util/TimerTask;
.source "FlymeConfirmPasswordView.java"


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

    .line 360
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 363
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$700(Lcom/android/server/policy/FlymeConfirmPasswordView;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 364
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xa10002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$602(Lcom/android/server/policy/FlymeConfirmPasswordView;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$802(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z

    goto :goto_43

    .line 367
    :cond_1f
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$802(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z

    .line 368
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xa10008d

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v5}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$700(Lcom/android/server/policy/FlymeConfirmPasswordView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$602(Lcom/android/server/policy/FlymeConfirmPasswordView;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    :goto_43
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    new-instance v1, Lcom/android/server/policy/FlymeConfirmPasswordView$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$5$1;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView$5;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 377
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$710(Lcom/android/server/policy/FlymeConfirmPasswordView;)I

    .line 379
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$700(Lcom/android/server/policy/FlymeConfirmPasswordView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_60

    .line 380
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$900(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    .line 382
    :cond_60
    return-void
.end method
