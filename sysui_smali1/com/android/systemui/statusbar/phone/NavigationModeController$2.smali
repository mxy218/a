.class Lcom/android/systemui/statusbar/phone/NavigationModeController$2;
.super Ljava/lang/Object;
.source "NavigationModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$000(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method

.method public onUserSetupChanged()V
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$000(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method

.method public onUserSwitched()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$100(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method
