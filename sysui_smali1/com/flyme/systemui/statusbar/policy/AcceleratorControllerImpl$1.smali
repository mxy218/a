.class Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;
.super Ljava/lang/Object;
.source "AcceleratorControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->setAcceleratorEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->access$202(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;Z)Z

    .line 49
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)V

    return-void
.end method
