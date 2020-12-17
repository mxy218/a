.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$fpName:Ljava/lang/String;

.field final synthetic val$holder:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Ljava/lang/String;Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;)V
    .registers 4

    .line 872
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->val$fpName:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->val$holder:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 874
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2500(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2702(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2700(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 876
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->val$fpName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2702(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 878
    :cond_2a
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->val$holder:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;

    invoke-static {p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;->access$1900(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2802(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 879
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$4;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2900(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V

    return-void
.end method
