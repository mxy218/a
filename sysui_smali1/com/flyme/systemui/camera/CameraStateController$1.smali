.class Lcom/flyme/systemui/camera/CameraStateController$1;
.super Landroid/database/ContentObserver;
.source "CameraStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/camera/CameraStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/camera/CameraStateController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/camera/CameraStateController;Landroid/os/Handler;)V
    .registers 3

    .line 79
    iput-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$1;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 82
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$1;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$100(Lcom/flyme/systemui/camera/CameraStateController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/camera/CameraStateController;->access$002(Lcom/flyme/systemui/camera/CameraStateController;Z)Z

    .line 83
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$1;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$200(Lcom/flyme/systemui/camera/CameraStateController;)V

    .line 84
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController$1;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p0}, Lcom/flyme/systemui/camera/CameraStateController;->access$300(Lcom/flyme/systemui/camera/CameraStateController;)V

    return-void
.end method
