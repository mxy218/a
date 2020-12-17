.class Lcom/meizu/settings/security/FlymeGuestModeSettings$11;
.super Ljava/lang/Object;
.source "FlymeGuestModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings;->showEnterGuestModePasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

.field final synthetic val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 3

    .line 628
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 632
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 633
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->checkPasswordLegal(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_45

    .line 636
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->savePassword(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 638
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1600(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 639
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1700(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 640
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1802(Lcom/meizu/settings/security/FlymeGuestModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_53

    .line 642
    :cond_45
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$11;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    const v0, 0x7f1210ed

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/textinputlayout/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_53
    return-void
.end method
