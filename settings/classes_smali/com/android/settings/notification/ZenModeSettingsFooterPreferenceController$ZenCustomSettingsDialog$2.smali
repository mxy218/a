.class Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;
.super Ljava/lang/Object;
.source "ZenModeSettingsFooterPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

.field final synthetic val$customSettingsDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Landroid/app/AlertDialog;)V
    .registers 3

    .line 237
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 11

    .line 240
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    const v0, 0x7f0a080c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0a0812

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0a080a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    const v3, 0x7f0a0810

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 248
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    const v4, 0x7f0a0818

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 250
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    const v5, 0x7f0a0815

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 252
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    const v6, 0x7f0a080e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 254
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->val$customSettingsDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0a0816

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 257
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {v7}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$200(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {v8}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$100(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$200(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    move-result-object p1

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {v7}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$100(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$100(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$300(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Z)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$100(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$300(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Z)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$100(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$300(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Z)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$100(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$300(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Z)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$100(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$300(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Z)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$200(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;->this$0:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->access$100(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
