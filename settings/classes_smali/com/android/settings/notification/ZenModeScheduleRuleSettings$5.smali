.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$200(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    return-void
.end method
