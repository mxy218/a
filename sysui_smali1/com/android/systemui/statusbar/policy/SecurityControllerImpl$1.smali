.class Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SecurityControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 395
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecurityController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 397
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 404
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecurityController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    return-void
.end method
