.class Lcom/android/systemui/statusbar/policy/MobileSignalController$3;
.super Landroid/os/Handler;
.source "MobileSignalController.java"


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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Looper;)V
    .registers 3

    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 193
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsShowingIconGracefully:Z

    .line 195
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    :cond_d
    return-void
.end method
