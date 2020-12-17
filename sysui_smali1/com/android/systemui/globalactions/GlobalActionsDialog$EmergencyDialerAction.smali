.class Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyDialerAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 4

    .line 554
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 555
    sget v0, Lcom/android/systemui/R$drawable;->ic_emergency_star:I

    const v1, 0x10402b7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .registers 3

    .line 553
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x621

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14800000

    .line 563
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    const/4 v2, 0x2

    .line 566
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
