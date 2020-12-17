.class Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "PowerSaveControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 41
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "mz_current_power_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->access$002(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;I)I

    .line 43
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-static {p1, v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->access$202(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;I)I

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "power save mode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerSaveControllerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)V

    return-void
.end method
