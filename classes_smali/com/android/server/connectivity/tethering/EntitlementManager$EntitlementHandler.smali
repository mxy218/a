.class Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;
.super Landroid/os/Handler;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/EntitlementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntitlementHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Looper;)V
    .registers 3

    .line 504
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 505
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 506
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 510
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_63

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2d

    .line 529
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$000(Lcom/android/server/connectivity/tethering/EntitlementManager;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    goto :goto_71

    .line 525
    :cond_2d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/ResultReceiver;

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 526
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$200(I)Z

    move-result p1

    .line 525
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$700(Lcom/android/server/connectivity/tethering/EntitlementManager;ILandroid/os/ResultReceiver;Z)V

    .line 527
    goto :goto_71

    .line 521
    :cond_3f
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$100(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object p1

    .line 522
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$600(Lcom/android/server/connectivity/tethering/EntitlementManager;Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 523
    goto :goto_71

    .line 518
    :cond_4f
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$200(I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$500(Lcom/android/server/connectivity/tethering/EntitlementManager;Z)V

    .line 519
    goto :goto_71

    .line 515
    :cond_5b
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$400(Lcom/android/server/connectivity/tethering/EntitlementManager;I)V

    .line 516
    goto :goto_71

    .line 512
    :cond_63
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$200(I)Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$300(Lcom/android/server/connectivity/tethering/EntitlementManager;IZ)V

    .line 513
    nop

    .line 532
    :goto_71
    return-void
.end method
