.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V
    .registers 3

    .line 266
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HotspotController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "flyme.drivemode.ACTION_CHANGE_HOTSPOT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, -0x1

    const-string v0, "action"

    .line 287
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_36

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->enableHotspot(Z)V

    goto :goto_3e

    :cond_36
    if-nez p1, :cond_3e

    .line 291
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->enableHotspot(Z)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setListening(Z)V
    .registers 4

    const-string v0, "HotspotController"

    if-eqz p1, :cond_2a

    .line 270
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    if-nez v1, :cond_2a

    .line 271
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$000()Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "Registering receiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_13
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "flyme.drivemode.ACTION_CHANGE_HOTSPOT"

    .line 273
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    goto :goto_47

    :cond_2a
    if-nez p1, :cond_47

    .line 276
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    if-eqz p1, :cond_47

    .line 277
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$000()Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "Unregistering receiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_3b
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    :cond_47
    :goto_47
    return-void
.end method
