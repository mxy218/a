.class Lcom/android/settings/sim/SimPreferenceDialog$2;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;

.field final synthetic val$tintSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V
    .registers 3

    .line 156
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    iput-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 159
    iget-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    iget-object p2, p2, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v0, 0x7f0a0684

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 160
    invoke-static {p2}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 161
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 162
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v0}, Lcom/android/settings/sim/SimPreferenceDialog;->access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v1}, Lcom/android/settings/sim/SimPreferenceDialog;->access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v1}, Lcom/android/settings/sim/SimPreferenceDialog;->access$200(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v0, v2}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;II)I

    .line 167
    iget-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    .line 168
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v0}, Lcom/android/settings/sim/SimPreferenceDialog;->access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v1}, Lcom/android/settings/sim/SimPreferenceDialog;->access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I

    move-result-object v1

    aget p2, v1, p2

    .line 170
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v1}, Lcom/android/settings/sim/SimPreferenceDialog;->access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    .line 171
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->access$200(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    .line 172
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
