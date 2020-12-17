.class Lcom/android/systemui/statusbar/policy/MobileSignalController$1;
.super Ljava/lang/Object;
.source "MobileSignalController.java"

# interfaces
.implements Lcom/android/ims/ImsManager$Connector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionReady(Lcom/android/ims/ImsManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "ImsManager: connection ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$002(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public connectionUnavailable()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "ImsManager: connection unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method
