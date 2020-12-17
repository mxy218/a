.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarFragment.java"


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

    .line 1140
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 1144
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.SCREEN_ON"

    if-nez p2, :cond_14

    .line 1145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 1146
    :cond_14
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    .line 1148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 1150
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->isEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 1151
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getTintController()Lcom/android/systemui/statusbar/phone/NavBarTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->start()V

    .line 1154
    :cond_3c
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateHomeChipEnableIfNeed()V

    goto :goto_4d

    .line 1158
    :cond_42
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getTintController()Lcom/android/systemui/statusbar/phone/NavBarTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->stop()V

    :cond_4d
    :goto_4d
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 1161
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 1163
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V

    :cond_5e
    const-string p2, "com.android.systemui.ROTATION_CHANGE"

    .line 1166
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 1167
    const-class p2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    :cond_78
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 1170
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 1171
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateHomeChipEnableIfNeed()V

    :cond_85
    return-void
.end method
