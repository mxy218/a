.class Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;
.super Ljava/lang/Object;
.source "MobileSignalController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FiveGStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 2

    .line 1394
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V
    .registers 5

    .line 1397
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 1402
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 1403
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 1405
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 1406
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    return-void
.end method
