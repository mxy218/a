.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateStates()V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    if-eqz p1, :cond_17

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V

    :cond_17
    return-void
.end method

.method public onNavBarButtonAlphaChanged(FZ)V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 215
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    goto :goto_2b

    .line 216
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    if-eqz p0, :cond_3b

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    const/4 v0, 0x4

    .line 220
    :goto_35
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZ)V

    :cond_3b
    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .registers 2

    .line 208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method
