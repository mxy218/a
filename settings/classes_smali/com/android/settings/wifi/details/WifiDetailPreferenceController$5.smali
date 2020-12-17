.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .registers 2

    .line 946
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3

    .line 953
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/MzPreferenceFragmentCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_17

    const p1, 0x7f1218db

    const/4 v0, 0x0

    .line 955
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 957
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_17
    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
