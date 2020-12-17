.class Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "EyeProtectiveControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 98
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "immediately_on_or_off"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    invoke-static {p1, v1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->access$002(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;Z)Z

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange mUserInitiated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EyeProtectiveController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)V

    return-void
.end method
