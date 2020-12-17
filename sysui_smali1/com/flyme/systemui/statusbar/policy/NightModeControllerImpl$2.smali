.class Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;
.super Ljava/lang/Object;
.source "NightModeControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->setInNightMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

.field final synthetic val$nightMode:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;->val$nightMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 90
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[foree] run: setInNightMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;->val$nightMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;->val$nightMode:Z

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$002(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)Z

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$402(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)Z

    .line 93
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)V

    return-void
.end method
