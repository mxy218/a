.class Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "ShortcutServicePickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 4

    .line 187
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment$1;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    iput-object p2, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_d

    .line 191
    iget-object p1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment$1;->val$fragment:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment$1;->val$key:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->access$000(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V

    goto :goto_15

    :cond_d
    const/4 p1, -0x2

    if-ne p2, p1, :cond_15

    .line 193
    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment$1;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_15
    :goto_15
    return-void
.end method
