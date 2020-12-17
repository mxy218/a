.class Lcom/flyme/systemui/developer/DeveloperSettingsController$1;
.super Landroid/database/ContentObserver;
.source "DeveloperSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/developer/DeveloperSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/developer/DeveloperSettingsController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/developer/DeveloperSettingsController;Landroid/os/Handler;)V
    .registers 3

    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController$1;->this$0:Lcom/flyme/systemui/developer/DeveloperSettingsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 42
    iget-object p1, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController$1;->this$0:Lcom/flyme/systemui/developer/DeveloperSettingsController;

    invoke-static {p1}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->access$100(Lcom/flyme/systemui/developer/DeveloperSettingsController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_developer_mode_notification"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->access$002(Lcom/flyme/systemui/developer/DeveloperSettingsController;Z)Z

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDeveloperOptionEnable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController$1;->this$0:Lcom/flyme/systemui/developer/DeveloperSettingsController;

    invoke-static {v0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->access$000(Lcom/flyme/systemui/developer/DeveloperSettingsController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeveloperSettingsController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p0, p0, Lcom/flyme/systemui/developer/DeveloperSettingsController$1;->this$0:Lcom/flyme/systemui/developer/DeveloperSettingsController;

    invoke-static {p0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->access$200(Lcom/flyme/systemui/developer/DeveloperSettingsController;)V

    return-void
.end method
