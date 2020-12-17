.class Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "DriveModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 86
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mz_drive_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 87
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Lcom/flyme/systemui/drivemode/DriveMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/drivemode/DriveMode;->onStart()V

    goto :goto_27

    .line 89
    :cond_1e
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Lcom/flyme/systemui/drivemode/DriveMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/drivemode/DriveMode;->onStop()V

    .line 91
    :goto_27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange mUserInitiated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Lcom/flyme/systemui/drivemode/DriveMode;

    sget-boolean v0, Lcom/flyme/systemui/drivemode/DriveMode;->modeOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DriveModeController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)V

    return-void
.end method
