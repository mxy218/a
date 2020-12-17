.class Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;
.super Ljava/lang/Object;
.source "FlymeStatusBarServiceController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->hideAlwaysTextAndIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

.field final synthetic val$finalInfo:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;Landroid/os/Bundle;)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iput-object p2, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;->val$finalInfo:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 164
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iget-object p1, p1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$400(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 165
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iget-object p1, p1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$500(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$animator;->stat_sys_always_in_animator:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iget-object v0, v0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;->val$finalInfo:Landroid/os/Bundle;

    if-eqz p1, :cond_4d

    .line 168
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iget-object v0, v0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$700(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;Landroid/os/Bundle;)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAlwaysShowArea mCurrentPackageName"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$400(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeStatusBarService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
