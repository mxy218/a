.class Lcom/flyme/systemui/drivemode/DriveModeConfig$1;
.super Landroid/database/ContentObserver;
.source "DriveModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/drivemode/DriveModeConfig;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/drivemode/DriveModeConfig;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/drivemode/DriveModeConfig;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 54
    iput-object p1, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig$1;->this$0:Lcom/flyme/systemui/drivemode/DriveModeConfig;

    iput-object p3, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 57
    iget-object p1, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig$1;->this$0:Lcom/flyme/systemui/drivemode/DriveModeConfig;

    iget-object v0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_drive_mode_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/flyme/systemui/drivemode/DriveModeConfig;->access$002(Lcom/flyme/systemui/drivemode/DriveModeConfig;J)J

    .line 58
    iget-object p0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig$1;->this$0:Lcom/flyme/systemui/drivemode/DriveModeConfig;

    invoke-static {p0}, Lcom/flyme/systemui/drivemode/DriveModeConfig;->access$000(Lcom/flyme/systemui/drivemode/DriveModeConfig;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/flyme/systemui/drivemode/DriveModeConfig;->access$100(Lcom/flyme/systemui/drivemode/DriveModeConfig;JZ)V

    return-void
.end method
