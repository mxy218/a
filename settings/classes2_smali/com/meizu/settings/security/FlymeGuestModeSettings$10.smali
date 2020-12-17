.class Lcom/meizu/settings/security/FlymeGuestModeSettings$10;
.super Ljava/lang/Object;
.source "FlymeGuestModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 2

    .line 614
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$10;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 616
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$10;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 617
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$10;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "input_method"

    .line 618
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 619
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$10;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
