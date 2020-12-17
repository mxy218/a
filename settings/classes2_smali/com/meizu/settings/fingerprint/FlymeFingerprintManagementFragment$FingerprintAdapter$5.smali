.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$5;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->showFingerprintNameDialog(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;)V
    .registers 2

    .line 885
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$5;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2

    .line 887
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$5;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
