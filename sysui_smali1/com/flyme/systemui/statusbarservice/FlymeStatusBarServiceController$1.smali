.class Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;
.super Ljava/lang/Object;
.source "FlymeStatusBarServiceController.java"

# interfaces
.implements Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->initFlymeStatusBarService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideAlwaysTextAndIcon(Ljava/lang/String;)V
    .registers 6

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideAlwaysTextAndIcon packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeStatusBarService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$600(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 120
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$500(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$animator;->stat_sys_always_out_animator:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v2}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$600(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$600(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7d

    .line 123
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1, v2}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$402(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$200(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 125
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$300(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 126
    new-instance p1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$1;-><init>(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 143
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 144
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const-string p0, "hideAlwaysTextAndIcon startAnimation mAlwaysShowMap size = 0"

    .line 145
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 147
    :cond_7d
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$600(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 150
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 152
    iget-object v3, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$402(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    :cond_a8
    new-instance p1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;

    invoke-direct {p1, p0, v2}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$2;-><init>(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideAlwaysTextAndIcon startAnimation mAlwaysShowMap size ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$600(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    :goto_d7
    return-void
.end method

.method public notifyEventForSystemUI(II)V
    .registers 3

    return-void
.end method

.method public releaseAndCloseHeadsUp()V
    .registers 1

    return-void
.end method

.method public setNavButtonVisible(Z)V
    .registers 2

    return-void
.end method

.method public setNavigationBarBackground(IZ)V
    .registers 3

    return-void
.end method

.method public setNavigationBarCarMode(Z)V
    .registers 2

    return-void
.end method

.method public setNavigationBarColorTheme(IZ)V
    .registers 3

    return-void
.end method

.method public setNavigationBarDarkTheme(ZZ)V
    .registers 3

    return-void
.end method

.method public setNotificationReplyingInfo(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public setStatusBarColorTheme(IZ)V
    .registers 3

    return-void
.end method

.method public setStatusBarDarkTheme(ZZ)V
    .registers 3

    return-void
.end method

.method public showAlwaysTextAndIcon(Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_bc

    const-string v0, "packageName"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAlwaysTextAndIcon packageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeStatusBarService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 97
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_51

    .line 98
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 99
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v2}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    :cond_51
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$200(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$300(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_80

    .line 102
    :cond_6e
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$200(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 103
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$300(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 105
    :cond_80
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$400(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$400(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    .line 106
    :cond_94
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$402(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$500(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$animator;->stat_sys_always_in_animator:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v2}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :cond_ae
    iget-object v1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$600(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$700(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;Landroid/os/Bundle;)V

    :cond_bc
    return-void
.end method
