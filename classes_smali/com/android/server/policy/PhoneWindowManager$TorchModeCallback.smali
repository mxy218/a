.class Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TorchModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 6365
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3

    .line 6365
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 6368
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4500(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 6369
    :cond_d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 6370
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$4200(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 6371
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 6373
    :cond_1f
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 3

    .line 6376
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4500(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 6377
    :cond_d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 6378
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 6379
    return-void
.end method
